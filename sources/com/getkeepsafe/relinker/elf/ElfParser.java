package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ElfParser implements Closeable, Elf {
    private final int MAGIC = 1179403647;
    private final FileChannel channel;

    public ElfParser(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        FileInputStream inputStream = new FileInputStream(file);
        this.channel = inputStream.getChannel();
    }

    public Elf.Header parseHeader() throws IOException {
        this.channel.position(0L);
        ByteBuffer buffer = ByteBuffer.allocate(8);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        if (readWord(buffer, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short fileClass = readByte(buffer, 4L);
        boolean bigEndian = readByte(buffer, 5L) == 2;
        if (fileClass == 1) {
            return new Elf32Header(bigEndian, this);
        }
        if (fileClass == 2) {
            return new Elf64Header(bigEndian, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    public List<String> parseNeededDependencies() throws IOException {
        long vStringTableOff;
        this.channel.position(0L);
        List<String> dependencies = new ArrayList<>();
        Elf.Header header = parseHeader();
        ByteBuffer buffer = ByteBuffer.allocate(8);
        buffer.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long numProgramHeaderEntries = header.phnum;
        if (numProgramHeaderEntries == 65535) {
            Elf.SectionHeader sectionHeader = header.getSectionHeader(0);
            numProgramHeaderEntries = sectionHeader.info;
        }
        long numProgramHeaderEntries2 = numProgramHeaderEntries;
        long dynamicSectionOff = 0;
        long i = 0;
        while (true) {
            if (i >= numProgramHeaderEntries2) {
                break;
            }
            Elf.ProgramHeader programHeader = header.getProgramHeader(i);
            if (programHeader.type == 2) {
                dynamicSectionOff = programHeader.offset;
                break;
            }
            i++;
        }
        long dynamicSectionOff2 = dynamicSectionOff;
        if (dynamicSectionOff2 == 0) {
            return Collections.unmodifiableList(dependencies);
        }
        List<Long> neededOffsets = new ArrayList<>();
        int i2 = 0;
        long vStringTableOff2 = 0;
        while (true) {
            Elf.DynamicStructure dynStructure = header.getDynamicStructure(dynamicSectionOff2, i2);
            vStringTableOff = vStringTableOff2;
            long vStringTableOff3 = dynStructure.tag;
            if (vStringTableOff3 == 1) {
                neededOffsets.add(Long.valueOf(dynStructure.val));
            } else if (dynStructure.tag == 5) {
                vStringTableOff = dynStructure.val;
            }
            int i3 = i2 + 1;
            if (dynStructure.tag == 0) {
                break;
            }
            i2 = i3;
            vStringTableOff2 = vStringTableOff;
        }
        if (vStringTableOff == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long stringTableOff = offsetFromVma(header, numProgramHeaderEntries2, vStringTableOff);
        for (Long strOff : neededOffsets) {
            dependencies.add(readString(buffer, strOff.longValue() + stringTableOff));
        }
        return dependencies;
    }

    private long offsetFromVma(Elf.Header header, long numEntries, long vma) throws IOException {
        for (long i = 0; i < numEntries; i++) {
            Elf.ProgramHeader programHeader = header.getProgramHeader(i);
            if (programHeader.type == 1 && programHeader.vaddr <= vma && vma <= programHeader.vaddr + programHeader.memsz) {
                return (vma - programHeader.vaddr) + programHeader.offset;
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    protected String readString(ByteBuffer buffer, long offset) throws IOException {
        StringBuilder builder = new StringBuilder();
        while (true) {
            long offset2 = 1 + offset;
            short s = readByte(buffer, offset);
            if (s != 0) {
                builder.append((char) s);
                offset = offset2;
            } else {
                return builder.toString();
            }
        }
    }

    protected long readLong(ByteBuffer buffer, long offset) throws IOException {
        read(buffer, offset, 8);
        return buffer.getLong();
    }

    protected long readWord(ByteBuffer buffer, long offset) throws IOException {
        read(buffer, offset, 4);
        return ((long) buffer.getInt()) & 4294967295L;
    }

    protected int readHalf(ByteBuffer buffer, long offset) throws IOException {
        read(buffer, offset, 2);
        return buffer.getShort() & 65535;
    }

    protected short readByte(ByteBuffer buffer, long offset) throws IOException {
        read(buffer, offset, 1);
        return (short) (buffer.get() & 255);
    }

    protected void read(ByteBuffer buffer, long offset, int length) throws IOException {
        buffer.position(0);
        buffer.limit(length);
        long bytesRead = 0;
        while (bytesRead < length) {
            int read = this.channel.read(buffer, offset + bytesRead);
            if (read == -1) {
                throw new EOFException();
            }
            bytesRead += (long) read;
        }
        buffer.position(0);
    }
}
