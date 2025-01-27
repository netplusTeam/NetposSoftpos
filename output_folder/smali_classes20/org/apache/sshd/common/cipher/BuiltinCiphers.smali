.class public enum Lorg/apache/sshd/common/cipher/BuiltinCiphers;
.super Ljava/lang/Enum;
.source "BuiltinCiphers.java"

# interfaces
.implements Lorg/apache/sshd/common/cipher/CipherFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;,
        Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/cipher/BuiltinCiphers;",
        ">;",
        "Lorg/apache/sshd/common/cipher/CipherFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field private static final EXTENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/cipher/CipherFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/cipher/BuiltinCiphers;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum aes128cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum aes128ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum aes192cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum aes192ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum aes256cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum aes256ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum arcfour128:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum arcfour256:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum blowfishcbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum none:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

.field public static final enum tripledescbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blkSize:I

.field private final factoryName:Ljava/lang/String;

.field private final ivsize:I

.field private final kdfSize:I

.field private final keysize:I

.field private final supported:Z

.field private final transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 49
    new-instance v10, Lorg/apache/sshd/common/cipher/BuiltinCiphers$1;

    const-string v1, "none"

    const/4 v2, 0x0

    const-string v3, "none"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "None"

    const/4 v7, 0x0

    const-string v8, "None"

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$1;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->none:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 55
    new-instance v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v12, "aes128cbc"

    const/4 v13, 0x1

    const-string v14, "aes128-cbc"

    const/16 v15, 0x10

    const/16 v16, 0x10

    const-string v17, "AES"

    const/16 v18, 0x80

    const-string v19, "AES/CBC/NoPadding"

    const/16 v20, 0x10

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes128cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 56
    new-instance v1, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v22, "aes128ctr"

    const/16 v23, 0x2

    const-string v24, "aes128-ctr"

    const/16 v25, 0x10

    const/16 v26, 0x10

    const-string v27, "AES"

    const/16 v28, 0x80

    const-string v29, "AES/CTR/NoPadding"

    const/16 v30, 0x10

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes128ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 57
    new-instance v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v12, "aes192cbc"

    const/4 v13, 0x3

    const-string v14, "aes192-cbc"

    const/16 v16, 0x18

    const-string v17, "AES"

    const/16 v18, 0xc0

    const-string v19, "AES/CBC/NoPadding"

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes192cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 58
    new-instance v3, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v22, "aes192ctr"

    const/16 v23, 0x4

    const-string v24, "aes192-ctr"

    const/16 v26, 0x18

    const-string v27, "AES"

    const/16 v28, 0xc0

    const-string v29, "AES/CTR/NoPadding"

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes192ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 59
    new-instance v4, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v12, "aes256cbc"

    const/4 v13, 0x5

    const-string v14, "aes256-cbc"

    const/16 v16, 0x20

    const-string v17, "AES"

    const/16 v18, 0x100

    const-string v19, "AES/CBC/NoPadding"

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes256cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 60
    new-instance v5, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v22, "aes256ctr"

    const/16 v23, 0x6

    const-string v24, "aes256-ctr"

    const/16 v26, 0x20

    const-string v27, "AES"

    const/16 v28, 0x100

    const-string v29, "AES/CTR/NoPadding"

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes256ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 61
    new-instance v6, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;

    const-string v12, "arcfour128"

    const/4 v13, 0x7

    const-string v14, "arcfour128"

    const/16 v15, 0x8

    const/16 v16, 0x10

    const-string v17, "ARCFOUR"

    const/16 v18, 0x80

    const-string v19, "RC4"

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->arcfour128:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 67
    new-instance v7, Lorg/apache/sshd/common/cipher/BuiltinCiphers$3;

    const-string v22, "arcfour256"

    const/16 v23, 0x8

    const-string v24, "arcfour256"

    const/16 v25, 0x8

    const-string v27, "ARCFOUR"

    const-string v29, "RC4"

    const/16 v30, 0x20

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v30}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$3;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->arcfour256:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 73
    new-instance v8, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string v12, "blowfishcbc"

    const/16 v13, 0x9

    const-string v14, "blowfish-cbc"

    const-string v17, "Blowfish"

    const-string v19, "Blowfish/CBC/NoPadding"

    const/16 v20, 0x8

    move-object v11, v8

    invoke-direct/range {v11 .. v20}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->blowfishcbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 74
    new-instance v9, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const-string/jumbo v22, "tripledescbc"

    const/16 v23, 0xa

    const-string v24, "3des-cbc"

    const/16 v26, 0x18

    const-string v27, "DESede"

    const/16 v28, 0xc0

    const-string v29, "DESede/CBC/NoPadding"

    const/16 v30, 0x8

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->tripledescbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 48
    const/16 v11, 0xb

    new-array v11, v11, [Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v0, v11, v10

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    sput-object v11, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->$VALUES:[Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 76
    const-class v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 77
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->VALUES:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->EXTENSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "factoryName"    # Ljava/lang/String;
    .param p4, "ivsize"    # I
    .param p5, "kdfSize"    # I
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "keySize"    # I
    .param p8, "transformation"    # Ljava/lang/String;
    .param p9, "blkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->factoryName:Ljava/lang/String;

    .line 95
    iput p4, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->ivsize:I

    .line 96
    iput p5, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->kdfSize:I

    .line 97
    iput p7, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->keysize:I

    .line 98
    iput-object p6, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->algorithm:Ljava/lang/String;

    .line 99
    iput-object p8, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->transformation:Ljava/lang/String;

    .line 100
    iput p9, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->blkSize:I

    .line 107
    const-string p1, "none"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p8, p7}, Lorg/apache/sshd/common/cipher/Cipher;->checkSupported(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->supported:Z

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/apache/sshd/common/cipher/BuiltinCiphers$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # I
    .param p10, "x9"    # Lorg/apache/sshd/common/cipher/BuiltinCiphers$1;

    .line 48
    invoke-direct/range {p0 .. p9}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static fromFactory(Lorg/apache/sshd/common/NamedFactory;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;)",
            "Lorg/apache/sshd/common/cipher/BuiltinCiphers;"
        }
    .end annotation

    .line 238
    .local p0, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/cipher/Cipher;>;"
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    move-result-object v0

    return-object v0
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 251
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 218
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    return-object v1

    .line 222
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    .line 223
    .local v2, "c":Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    return-object v2

    .line 226
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    return-object v1
.end method

.method public static getRegisteredExtensions()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Lorg/apache/sshd/common/cipher/CipherFactory;",
            ">;"
        }
    .end annotation

    .line 191
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseCiphersList(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    .locals 1
    .param p0, "ciphers"    # Ljava/lang/String;

    .line 261
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->parseCiphersList([Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseCiphersList(Ljava/util/Collection;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;"
        }
    .end annotation

    .line 269
    .local p0, "ciphers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;->EMPTY:Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/cipher/CipherFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 275
    .local v1, "unknown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/CipherFactory;

    move-result-object v4

    .line 277
    .local v4, "c":Lorg/apache/sshd/common/cipher/CipherFactory;
    if-eqz v4, :cond_1

    .line 278
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 284
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":Lorg/apache/sshd/common/cipher/CipherFactory;
    :goto_1
    goto :goto_0

    .line 288
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseCiphersList([Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    .locals 1
    .param p0, "ciphers"    # [Ljava/lang/String;

    .line 265
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->parseCiphersList(Ljava/util/Collection;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerExtension(Lorg/apache/sshd/common/cipher/CipherFactory;)V
    .locals 5
    .param p0, "extension"    # Lorg/apache/sshd/common/cipher/CipherFactory;

    .line 177
    const-string v0, "No extension provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/CipherFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/cipher/CipherFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Extension overrides built-in: %s"

    invoke-static {v1, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 180
    sget-object v1, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 181
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Extension overrides existing: %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/CipherFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    move-result-object v0

    .line 302
    .local v0, "c":Lorg/apache/sshd/common/cipher/CipherFactory;
    if-eqz v0, :cond_1

    .line 303
    return-object v0

    .line 306
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 307
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/CipherFactory;

    monitor-exit v1

    return-object v2

    .line 308
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtension(Ljava/lang/String;)Lorg/apache/sshd/common/NamedFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/NamedFactory;

    monitor-exit v0

    return-object v1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/cipher/BuiltinCiphers;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->$VALUES:[Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/cipher/BuiltinCiphers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->create()Lorg/apache/sshd/common/cipher/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/cipher/Cipher;
    .locals 8

    .line 162
    new-instance v7, Lorg/apache/sshd/common/cipher/BaseCipher;

    .line 163
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getIVSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getKdfSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getKeySize()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getTransformation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getCipherBlockSize()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/cipher/BaseCipher;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    .line 162
    return-object v7
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->blkSize:I

    return v0
.end method

.method public getIVSize()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->ivsize:I

    return v0
.end method

.method public getKdfSize()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->kdfSize:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->keysize:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->factoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformation()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->supported:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
