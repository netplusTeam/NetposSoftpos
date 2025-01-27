.class public Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;
.super Ljava/lang/Object;
.source "LDiffUtil.java"


# static fields
.field static final MASK_32BIT:J = 0xffffffffL

.field static md:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;

    .line 41
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 152
    if-eqz p1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->close()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .restart local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static concatByteArray([B[B)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 49
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 54
    .local v0, "len":I
    new-array v1, v0, [B

    .line 56
    .local v1, "dest":[B
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-object v1

    .line 50
    .end local v0    # "len":I
    .end local v1    # "dest":[B
    :cond_1
    :goto_0
    if-nez p0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getXi([B)I
    .locals 3
    .param p0, "keyValue"    # [B

    .line 70
    new-instance v0, Lcom/sleepycat/je/utilint/Adler32;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/Adler32;-><init>()V

    .line 71
    .local v0, "adler32":Lcom/sleepycat/je/utilint/Adler32;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/sleepycat/je/utilint/Adler32;->update([BII)V

    .line 72
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Adler32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method public static openDb(Lcom/sleepycat/je/Environment;Ljava/lang/String;)Lcom/sleepycat/je/Database;
    .locals 3
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "dbName"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 140
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 142
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 144
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    .line 148
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    return-object v1
.end method

.method public static openEnv(Ljava/lang/String;)Lcom/sleepycat/je/Environment;
    .locals 3
    .param p0, "envDir"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 123
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 126
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/Environment;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Lcom/sleepycat/je/EnvironmentLockedException;
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentLockedException;->printStackTrace()V

    .line 131
    .end local v1    # "e":Lcom/sleepycat/je/EnvironmentLockedException;
    nop

    .line 132
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readBlock(ILcom/sleepycat/je/Cursor;I)Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 12
    .param p0, "blockId"    # I
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "numKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 80
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 82
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v2, Lcom/sleepycat/je/utilint/Adler32;

    invoke-direct {v2}, Lcom/sleepycat/je/utilint/Adler32;-><init>()V

    .line 83
    .local v2, "adler32":Lcom/sleepycat/je/utilint/Adler32;
    const/4 v3, 0x0

    .line 84
    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "a":I
    const/4 v5, 0x0

    .line 85
    .local v5, "b":I
    sget-object v6, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 86
    new-instance v6, Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-direct {v6, p0}, Lcom/sleepycat/je/rep/util/ldiff/Block;-><init>(I)V

    .line 89
    .local v6, "block":Lcom/sleepycat/je/rep/util/ldiff/Block;
    :goto_0
    if-ge v3, p2, :cond_1

    sget-object v7, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 90
    invoke-virtual {p1, v0, v1, v7}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v7, v8, :cond_1

    .line 93
    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setBeginKey([B)V

    .line 95
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setBeginData([B)V

    .line 99
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Adler32;->reset()V

    .line 100
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v8}, Lcom/sleepycat/je/utilint/Adler32;->update([BII)V

    .line 101
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v2, v7, v9, v8}, Lcom/sleepycat/je/utilint/Adler32;->update([BII)V

    .line 102
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Adler32;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    .line 103
    .local v7, "xi":I
    add-int/2addr v4, v7

    .line 104
    add-int/2addr v5, v4

    .line 106
    sget-object v8, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    sget-object v8, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    nop

    .end local v7    # "xi":I
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    int-to-long v7, v4

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    int-to-long v9, v5

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    .line 113
    .local v7, "cksum":J
    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setRollingChksum(J)V

    .line 114
    sget-object v9, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->md:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setMd5Hash([B)V

    .line 115
    invoke-virtual {v6, v3}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setNumRecords(I)V

    .line 116
    return-object v6
.end method
