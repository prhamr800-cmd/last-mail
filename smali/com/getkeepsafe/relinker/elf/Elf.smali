###### Class com.getkeepsafe.relinker.elf.Elf (com.getkeepsafe.relinker.elf.Elf)
.class public interface abstract Lcom/getkeepsafe/relinker/elf/Elf;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;,
        Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;,
        Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;,
        Lcom/getkeepsafe/relinker/elf/Elf$Header;
    }
.end annotation

###### Class com.getkeepsafe.relinker.elf.Elf.DynamicStructure (com.getkeepsafe.relinker.elf.Elf$DynamicStructure)
.class public abstract Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicStructure"
.end annotation


# static fields
.field public static final DT_NEEDED:I = 0x1

.field public static final DT_NULL:I = 0x0

.field public static final DT_STRTAB:I = 0x5


# instance fields
.field public tag:J

.field public val:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.getkeepsafe.relinker.elf.Elf.Header (com.getkeepsafe.relinker.elf.Elf$Header)
.class public abstract Lcom/getkeepsafe/relinker/elf/Elf$Header;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Header"
.end annotation


# static fields
.field public static final ELFCLASS32:I = 0x1

.field public static final ELFCLASS64:I = 0x2

.field public static final ELFDATA2MSB:I = 0x2


# instance fields
.field public bigEndian:Z

.field public phentsize:I

.field public phnum:I

.field public phoff:J

.field public shentsize:I

.field public shnum:I

.field public shoff:J

.field public shstrndx:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDynamicStructure(JI)Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSectionHeader(I)Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.getkeepsafe.relinker.elf.Elf.ProgramHeader (com.getkeepsafe.relinker.elf.Elf$ProgramHeader)
.class public abstract Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgramHeader"
.end annotation


# static fields
.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_LOAD:I = 0x1


# instance fields
.field public memsz:J

.field public offset:J

.field public type:J

.field public vaddr:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.getkeepsafe.relinker.elf.Elf.SectionHeader (com.getkeepsafe.relinker.elf.Elf$SectionHeader)
.class public abstract Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SectionHeader"
.end annotation


# instance fields
.field public info:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
