package com.digikala.dms.core;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.util.Base64;
import android.util.Log;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes2.dex */
public class KeyStoreManager {
    private String alias;
    private KeyStore keyStore;

    private KeyStoreManager(String alias) {
        this.alias = alias;
        initialKeyStore();
    }

    private void initialKeyStore() {
        try {
            this.keyStore = KeyStore.getInstance("AndroidKeyStore");
        } catch (KeyStoreException e) {
            e.printStackTrace();
        }
        try {
            this.keyStore.load(null);
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        } catch (CertificateException e4) {
            e4.printStackTrace();
        }
    }

    public static KeyStoreManager getKeyStoreManager(String alias) {
        return new KeyStoreManager(alias);
    }

    public void createNewKeys(Context context) {
        try {
            if (!this.keyStore.containsAlias(this.alias)) {
                Calendar start = Calendar.getInstance();
                Calendar end = Calendar.getInstance();
                end.add(1, 10);
                if (Build.VERSION.SDK_INT >= 18) {
                    KeyPairGeneratorSpec spec = new KeyPairGeneratorSpec.Builder(context).setAlias(this.alias).setSubject(new X500Principal("CN=DMS, O=DigiKala , C=Iran")).setSerialNumber(BigInteger.ONE).setStartDate(start.getTime()).setEndDate(end.getTime()).build();
                    KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    generator.initialize(spec);
                    KeyPair keyPair = generator.generateKeyPair();
                    Log.i("alias", keyPair.getPrivate() + keyPair.getPublic().toString() + "");
                }
            }
        } catch (Exception e) {
            Log.e("s'", Log.getStackTraceString(e));
        }
    }

    public void refreshKeys() {
        ArrayList<String> keyAliases = new ArrayList<>();
        try {
            Enumeration<String> aliases = this.keyStore.aliases();
            while (aliases.hasMoreElements()) {
                keyAliases.add(aliases.nextElement());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (String alias : keyAliases) {
            Log.i("alias", alias);
        }
    }

    public byte[] get64ByteKey(Context context) {
        byte[] key64Byte = new byte[64];
        createNewKeys(context);
        RSAPublicKey publicKey = null;
        try {
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) this.keyStore.getEntry(this.alias, null);
            publicKey = (RSAPublicKey) privateKeyEntry.getCertificate().getPublicKey();
        } catch (KeyStoreException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (UnrecoverableEntryException e3) {
            e3.printStackTrace();
        }
        byte[] publicKeyByte = publicKey.getModulus().toByteArray();
        for (int i = 0; i < 64; i++) {
            key64Byte[i] = publicKeyByte[i];
        }
        return key64Byte;
    }

    public void encryptString(String originalContent) {
        try {
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) this.keyStore.getEntry(this.alias, null);
            RSAPublicKey publicKey = (RSAPublicKey) privateKeyEntry.getCertificate().getPublicKey();
            if (originalContent.isEmpty()) {
                return;
            }
            Cipher input = Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
            input.init(1, publicKey);
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            CipherOutputStream cipherOutputStream = new CipherOutputStream(outputStream, input);
            cipherOutputStream.write(originalContent.getBytes(HttpRequest.CHARSET_UTF8));
            cipherOutputStream.close();
            outputStream.toByteArray();
        } catch (Exception e) {
            Log.e("alias", Log.getStackTraceString(e));
        }
    }

    public void decryptString(String encryptedText) {
        try {
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) this.keyStore.getEntry(this.alias, null);
            RSAPrivateKey privateKey = (RSAPrivateKey) privateKeyEntry.getPrivateKey();
            Cipher output = Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
            output.init(2, privateKey);
            CipherInputStream cipherInputStream = new CipherInputStream(new ByteArrayInputStream(Base64.decode(encryptedText, 0)), output);
            ArrayList<Byte> values = new ArrayList<>();
            while (true) {
                int nextByte = cipherInputStream.read();
                if (nextByte == -1) {
                    break;
                } else {
                    values.add(Byte.valueOf((byte) nextByte));
                }
            }
            Log.i("alias", "Decrypted Text : " + values.toString());
            byte[] bytes = new byte[values.size()];
            for (int i = 0; i < bytes.length; i++) {
                bytes[i] = values.get(i).byteValue();
            }
            new String(bytes, 0, bytes.length, HttpRequest.CHARSET_UTF8);
        } catch (Exception e) {
            Log.e("alias", Log.getStackTraceString(e));
        }
    }
}
