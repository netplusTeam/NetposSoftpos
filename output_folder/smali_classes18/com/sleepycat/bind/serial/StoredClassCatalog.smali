.class public Lcom/sleepycat/bind/serial/StoredClassCatalog;
.super Ljava/lang/Object;
.source "StoredClassCatalog.java"

# interfaces
.implements Lcom/sleepycat/bind/serial/ClassCatalog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    }
.end annotation


# static fields
.field private static final LAST_CLASS_ID_KEY:[B

.field private static final REC_CLASS_FORMAT:B = 0x1t

.field private static final REC_CLASS_INFO:B = 0x2t

.field private static final REC_LAST_CLASS_ID:B

.field private static ZERO_LENGTH_BYTE_ARRAY:[B


# instance fields
.field private cdbMode:Z

.field private classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private db:Lcom/sleepycat/je/Database;

.field private formatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/math/BigInteger;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private txnMode:Z

.field private writeLockMode:Lcom/sleepycat/je/LockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->LAST_CLASS_ID_KEY:[B

    .line 449
    new-array v0, v1, [B

    sput-object v0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;)V
    .locals 7
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    .line 88
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 89
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    iget-object v1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 91
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    :goto_1
    iput-object v2, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->writeLockMode:Lcom/sleepycat/je/LockMode;

    .line 94
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->cdbMode:Z

    .line 95
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->txnMode:Z

    .line 97
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getSortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 102
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getUnsortedDuplicates(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->classMap:Ljava/util/HashMap;

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->formatMap:Ljava/util/HashMap;

    .line 115
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/bind/serial/StoredClassCatalog;->LAST_CLASS_ID_KEY:[B

    invoke-direct {v2, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 116
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 117
    .local v3, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 119
    iget-object v4, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v4, v5, v2, v3, v5}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 120
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v5, :cond_2

    .line 124
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    goto :goto_2

    .line 121
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    nop

    .line 122
    const-string v5, "A read-only catalog database may not be empty"

    invoke-static {v5}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 126
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 133
    iget-object v4, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v4, v5, v2, v3, v5}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 134
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v6, :cond_4

    .line 135
    iget-object v6, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v6, v5, v2, v3}, Lcom/sleepycat/je/Database;->putNoOverwrite(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 138
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_4
    :goto_2
    return-void

    .line 103
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The class catalog database must not allow duplicates."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The class catalog must be a BTREE database."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static areClassFormatsEqual(Ljava/io/ObjectStreamClass;[BLjava/io/ObjectStreamClass;)Z
    .locals 2
    .param p0, "format1"    # Ljava/io/ObjectStreamClass;
    .param p1, "format1Bytes"    # [B
    .param p2, "format2"    # Ljava/io/ObjectStreamClass;

    .line 438
    if-nez p1, :cond_0

    .line 439
    :try_start_0
    invoke-static {p0}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getObjectBytes(Ljava/lang/Object;)[B

    move-result-object v0

    move-object p1, v0

    .line 441
    :cond_0
    invoke-static {p2}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getObjectBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 442
    .local v0, "format2Bytes":[B
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 443
    .end local v0    # "format2Bytes":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method private static getBytes(Lcom/sleepycat/je/DatabaseEntry;)[B
    .locals 6
    .param p0, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 452
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 453
    .local v0, "b":[B
    if-nez v0, :cond_0

    .line 454
    const/4 v1, 0x0

    return-object v1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    if-nez v1, :cond_1

    array-length v1, v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 457
    return-object v0

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    .line 460
    .local v1, "len":I
    if-nez v1, :cond_2

    .line 461
    sget-object v2, Lcom/sleepycat/bind/serial/StoredClassCatalog;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v2

    .line 463
    :cond_2
    new-array v2, v1, [B

    .line 464
    .local v2, "t":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    return-object v2
.end method

.method private getClassFormat([BLcom/sleepycat/je/DatabaseEntry;)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "classID"    # [B
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 179
    .local v0, "classIDObj":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->formatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    .line 180
    .local v1, "classFormat":Ljava/io/ObjectStreamClass;
    if-nez v1, :cond_1

    .line 184
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 185
    .local v2, "keyBytes":[B
    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 186
    array-length v5, p1

    invoke-static {p1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3, v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 191
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v4, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    const/4 v5, 0x0

    sget-object v6, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v4, v5, v3, p2, v6}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 192
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v5, :cond_0

    .line 196
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 198
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    .line 199
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v8

    .line 200
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/ObjectStreamClass;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 204
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    nop

    .line 208
    iget-object v5, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->formatMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    .line 203
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 193
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v5, Ljava/lang/ClassNotFoundException;

    const-string v6, "Catalog class ID not found"

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    .end local v2    # "keyBytes":[B
    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getClassInfo(Ljava/io/ObjectStreamClass;)Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .locals 10
    .param p1, "classFormat"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    .line 231
    .local v1, "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    if-eqz v1, :cond_0

    .line 232
    return-object v1

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 236
    .local v2, "nameChars":[C
    invoke-static {v2}, Lcom/sleepycat/util/UtfOps;->getByteLength([C)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 237
    .local v3, "keyBytes":[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    .line 238
    array-length v5, v2

    invoke-static {v2, v6, v3, v4, v5}, Lcom/sleepycat/util/UtfOps;->charsToBytes([CI[BII)V

    .line 239
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v4, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 242
    .local v4, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 243
    .local v5, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v6, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    const/4 v7, 0x0

    sget-object v8, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    .line 244
    .local v6, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v6, v7, :cond_1

    .line 250
    new-instance v7, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    invoke-direct {v7}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;-><init>()V

    invoke-direct {p0, v7, v0, v4, p1}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->putClassInfo(Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Ljava/io/ObjectStreamClass;)Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    move-result-object v1

    goto :goto_0

    .line 257
    :cond_1
    new-instance v7, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    invoke-direct {v7, v5}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    move-object v1, v7

    .line 258
    new-instance v7, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 259
    .local v7, "formatData":Lcom/sleepycat/je/DatabaseEntry;
    nop

    .line 260
    invoke-virtual {v1}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->getClassID()[B

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getClassFormat([BLcom/sleepycat/je/DatabaseEntry;)Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 266
    .local v8, "storedClassFormat":Ljava/io/ObjectStreamClass;
    nop

    .line 267
    invoke-static {v7}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getBytes(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v9

    .line 266
    invoke-static {v8, v9, p1}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->areClassFormatsEqual(Ljava/io/ObjectStreamClass;[BLjava/io/ObjectStreamClass;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 269
    invoke-direct {p0, v1, v0, v4, p1}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->putClassInfo(Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Ljava/io/ObjectStreamClass;)Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    move-result-object v1

    .line 274
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->setClassFormat(Ljava/io/ObjectStreamClass;)V

    .line 275
    iget-object v9, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->classMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v2    # "nameChars":[C
    .end local v3    # "keyBytes":[B
    .end local v4    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v7    # "formatData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v8    # "storedClassFormat":Ljava/io/ObjectStreamClass;
    :goto_0
    return-object v1
.end method

.method private static getObjectBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 473
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 474
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 475
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static incrementID([B)[B
    .locals 3
    .param p0, "key"    # [B

    .line 373
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 374
    .local v0, "id":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private putClassInfo(Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Ljava/io/ObjectStreamClass;)Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .locals 17
    .param p1, "classInfo"    # Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "classFormat"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 294
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v0, 0x0

    .line 295
    .local v0, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    iget-boolean v4, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->cdbMode:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 296
    new-instance v4, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v4}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    move-object v0, v4

    .line 297
    invoke-static {v0, v5}, Lcom/sleepycat/compat/DbCompat;->setWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)V

    goto :goto_0

    .line 295
    :cond_0
    move-object v4, v0

    .line 299
    .end local v0    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v4, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_0
    const/4 v6, 0x0

    .line 300
    .local v6, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v7, 0x0

    .line 302
    .local v7, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    iget-boolean v0, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->txnMode:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    move-object v7, v0

    .line 305
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0, v7, v4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 308
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    sget-object v8, Lcom/sleepycat/bind/serial/StoredClassCatalog;->LAST_CLASS_ID_KEY:[B

    invoke-direct {v0, v8}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    move-object v8, v0

    .line 309
    .local v8, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v9, v0

    .line 310
    .local v9, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->writeLockMode:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v6, v8, v9, v0}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    move-object v10, v0

    .line 312
    .local v10, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v10, v0, :cond_4

    .line 315
    invoke-static {v9}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getBytes(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    .line 318
    .local v0, "idBytes":[B
    invoke-static {v0}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->incrementID([B)[B

    move-result-object v11

    .line 319
    .end local v0    # "idBytes":[B
    .local v11, "idBytes":[B
    invoke-virtual {v9, v11}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 320
    invoke-virtual {v6, v8, v9}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 326
    array-length v0, v11

    add-int/2addr v0, v5

    new-array v0, v0, [B

    move-object v12, v0

    .line 327
    .local v12, "keyBytes":[B
    const/4 v0, 0x0

    aput-byte v5, v12, v0

    .line 328
    array-length v13, v11

    invoke-static {v11, v0, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 331
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    .line 334
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 335
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 338
    nop

    .line 339
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 341
    invoke-virtual {v6, v8, v9}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 348
    invoke-virtual {v2, v11}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->setClassID([B)V

    .line 349
    invoke-virtual {v2, v9}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->toDbt(Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 351
    move-object/from16 v13, p3

    :try_start_3
    invoke-virtual {v6, v13, v9}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 357
    invoke-virtual {v2, v3}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->setClassFormat(Ljava/io/ObjectStreamClass;)V

    .line 358
    iget-object v14, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->classMap:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v15, p2

    :try_start_4
    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v14, v1, Lcom/sleepycat/bind/serial/StoredClassCatalog;->formatMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .end local v0    # "oos":Ljava/io/ObjectOutputStream;
    .local v16, "oos":Ljava/io/ObjectOutputStream;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    nop

    .line 362
    if-eqz v6, :cond_2

    .line 363
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 365
    :cond_2
    if-eqz v7, :cond_3

    .line 366
    invoke-virtual {v7}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 360
    :cond_3
    return-object v2

    .line 362
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v11    # "idBytes":[B
    .end local v12    # "keyBytes":[B
    .end local v16    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_1

    .line 336
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v9    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v11    # "idBytes":[B
    .restart local v12    # "keyBytes":[B
    :catch_0
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    .line 337
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v14

    .end local v4    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "classKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "classFormat":Ljava/io/ObjectStreamClass;
    throw v14

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "idBytes":[B
    .end local v12    # "keyBytes":[B
    .restart local v4    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "classKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "classFormat":Ljava/io/ObjectStreamClass;
    :cond_4
    move-object/from16 v15, p2

    move-object/from16 v13, p3

    const-string v0, "Class ID not initialized"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local v4    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p1    # "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "classKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "classFormat":Ljava/io/ObjectStreamClass;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 362
    .end local v8    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v9    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v4    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v6    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "classKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "classFormat":Ljava/io/ObjectStreamClass;
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    :goto_1
    if-eqz v6, :cond_5

    .line 363
    invoke-virtual {v6}, Lcom/sleepycat/je/Cursor;->close()V

    .line 365
    :cond_5
    if-eqz v7, :cond_6

    .line 366
    invoke-virtual {v7}, Lcom/sleepycat/je/Transaction;->commit()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    .line 147
    .end local p0    # "this":Lcom/sleepycat/bind/serial/StoredClassCatalog;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    .line 148
    iput-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->formatMap:Ljava/util/HashMap;

    .line 149
    iput-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->classMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassFormat([B)Ljava/io/ObjectStreamClass;
    .locals 1
    .param p1, "classID"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getClassFormat([BLcom/sleepycat/je/DatabaseEntry;)Ljava/io/ObjectStreamClass;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    .end local p0    # "this":Lcom/sleepycat/bind/serial/StoredClassCatalog;
    .end local p1    # "classID":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClassID(Ljava/io/ObjectStreamClass;)[B
    .locals 2
    .param p1, "classFormat"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/bind/serial/StoredClassCatalog;->getClassInfo(Ljava/io/ObjectStreamClass;)Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;

    move-result-object v0

    .line 157
    .local v0, "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    invoke-virtual {v0}, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->getClassID()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 155
    .end local v0    # "classInfo":Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
    .end local p0    # "this":Lcom/sleepycat/bind/serial/StoredClassCatalog;
    .end local p1    # "classFormat":Ljava/io/ObjectStreamClass;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getClassLoader(Lcom/sleepycat/je/Environment;)Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
