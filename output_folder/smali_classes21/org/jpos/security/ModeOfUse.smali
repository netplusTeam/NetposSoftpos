.class public final enum Lorg/jpos/security/ModeOfUse;
.super Ljava/lang/Enum;
.source "ModeOfUse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/ModeOfUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/ModeOfUse;

.field public static final enum ANY:Lorg/jpos/security/ModeOfUse;

.field public static final enum DECONLY:Lorg/jpos/security/ModeOfUse;

.field public static final enum DERIVE:Lorg/jpos/security/ModeOfUse;

.field public static final enum ENCDEC:Lorg/jpos/security/ModeOfUse;

.field public static final enum ENCONLY:Lorg/jpos/security/ModeOfUse;

.field public static final enum GENONLY:Lorg/jpos/security/ModeOfUse;

.field public static final enum GENSIGN:Lorg/jpos/security/ModeOfUse;

.field public static final enum GENVER:Lorg/jpos/security/ModeOfUse;

.field public static final enum KEYVAR:Lorg/jpos/security/ModeOfUse;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/jpos/security/ModeOfUse;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SIGNVER:Lorg/jpos/security/ModeOfUse;

.field public static final enum VERONLY:Lorg/jpos/security/ModeOfUse;


# instance fields
.field private final code:C

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lorg/jpos/security/ModeOfUse;

    const-string v1, "ENCDEC"

    const/4 v2, 0x0

    const/16 v3, 0x42

    const-string v4, "Encryption and Decryption"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lorg/jpos/security/ModeOfUse;->ENCDEC:Lorg/jpos/security/ModeOfUse;

    .line 41
    new-instance v1, Lorg/jpos/security/ModeOfUse;

    const-string v3, "GENVER"

    const/4 v4, 0x1

    const/16 v5, 0x43

    const-string v6, "Verification and Generation of MAC, CVD"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v1, Lorg/jpos/security/ModeOfUse;->GENVER:Lorg/jpos/security/ModeOfUse;

    .line 46
    new-instance v3, Lorg/jpos/security/ModeOfUse;

    const-string v5, "DECONLY"

    const/4 v6, 0x2

    const/16 v7, 0x44

    const-string v8, "Data Decryption"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v3, Lorg/jpos/security/ModeOfUse;->DECONLY:Lorg/jpos/security/ModeOfUse;

    .line 51
    new-instance v5, Lorg/jpos/security/ModeOfUse;

    const-string v7, "ENCONLY"

    const/4 v8, 0x3

    const/16 v9, 0x45

    const-string v10, "Data Encryption"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v5, Lorg/jpos/security/ModeOfUse;->ENCONLY:Lorg/jpos/security/ModeOfUse;

    .line 56
    new-instance v7, Lorg/jpos/security/ModeOfUse;

    const-string v9, "GENONLY"

    const/4 v10, 0x4

    const/16 v11, 0x47

    const-string v12, "Generaction of MAC, CVD"

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v7, Lorg/jpos/security/ModeOfUse;->GENONLY:Lorg/jpos/security/ModeOfUse;

    .line 61
    new-instance v9, Lorg/jpos/security/ModeOfUse;

    const-string v11, "ANY"

    const/4 v12, 0x5

    const/16 v13, 0x4e

    const-string v14, "Without restrictions"

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v9, Lorg/jpos/security/ModeOfUse;->ANY:Lorg/jpos/security/ModeOfUse;

    .line 67
    new-instance v11, Lorg/jpos/security/ModeOfUse;

    const-string v13, "GENSIGN"

    const/4 v14, 0x6

    const/16 v15, 0x53

    const-string v12, "Digital Signature Generation"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v11, Lorg/jpos/security/ModeOfUse;->GENSIGN:Lorg/jpos/security/ModeOfUse;

    .line 73
    new-instance v12, Lorg/jpos/security/ModeOfUse;

    const-string v13, "SIGNVER"

    const/4 v15, 0x7

    const/16 v14, 0x54

    const-string v10, "Digital Signature Generation and Verification"

    invoke-direct {v12, v13, v15, v14, v10}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v12, Lorg/jpos/security/ModeOfUse;->SIGNVER:Lorg/jpos/security/ModeOfUse;

    .line 79
    new-instance v10, Lorg/jpos/security/ModeOfUse;

    const-string v13, "VERONLY"

    const/16 v14, 0x8

    const/16 v15, 0x56

    const-string v8, "Digital Signature Verification"

    invoke-direct {v10, v13, v14, v15, v8}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v10, Lorg/jpos/security/ModeOfUse;->VERONLY:Lorg/jpos/security/ModeOfUse;

    .line 84
    new-instance v8, Lorg/jpos/security/ModeOfUse;

    const-string v13, "DERIVE"

    const/16 v15, 0x9

    const/16 v14, 0x58

    const-string v6, "Derive Keys"

    invoke-direct {v8, v13, v15, v14, v6}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v8, Lorg/jpos/security/ModeOfUse;->DERIVE:Lorg/jpos/security/ModeOfUse;

    .line 89
    new-instance v6, Lorg/jpos/security/ModeOfUse;

    const-string v13, "KEYVAR"

    const/16 v14, 0xa

    const/16 v15, 0x59

    const-string v4, "Key used to create key variants"

    invoke-direct {v6, v13, v14, v15, v4}, Lorg/jpos/security/ModeOfUse;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v6, Lorg/jpos/security/ModeOfUse;->KEYVAR:Lorg/jpos/security/ModeOfUse;

    .line 30
    const/16 v4, 0xb

    new-array v4, v4, [Lorg/jpos/security/ModeOfUse;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lorg/jpos/security/ModeOfUse;->$VALUES:[Lorg/jpos/security/ModeOfUse;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/ModeOfUse;->MAP:Ljava/util/Map;

    .line 95
    invoke-static {}, Lorg/jpos/security/ModeOfUse;->values()[Lorg/jpos/security/ModeOfUse;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    .local v3, "tr":Lorg/jpos/security/ModeOfUse;
    sget-object v4, Lorg/jpos/security/ModeOfUse;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jpos/security/ModeOfUse;->getCode()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v3    # "tr":Lorg/jpos/security/ModeOfUse;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLjava/lang/String;)V
    .locals 0
    .param p3, "code"    # C
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    const-string p1, "The name of key use mode is required"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iput-char p3, p0, Lorg/jpos/security/ModeOfUse;->code:C

    .line 105
    iput-object p4, p0, Lorg/jpos/security/ModeOfUse;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/ModeOfUse;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/jpos/security/ModeOfUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/ModeOfUse;

    return-object v0
.end method

.method public static valueOfByCode(C)Lorg/jpos/security/ModeOfUse;
    .locals 2
    .param p0, "code"    # C

    .line 140
    sget-object v0, Lorg/jpos/security/ModeOfUse;->MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/ModeOfUse;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/ModeOfUse;
    .locals 1

    .line 30
    sget-object v0, Lorg/jpos/security/ModeOfUse;->$VALUES:[Lorg/jpos/security/ModeOfUse;

    invoke-virtual {v0}, [Lorg/jpos/security/ModeOfUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/ModeOfUse;

    return-object v0
.end method


# virtual methods
.method public getCode()C
    .locals 1

    .line 114
    iget-char v0, p0, Lorg/jpos/security/ModeOfUse;->code:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/jpos/security/ModeOfUse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-char v1, p0, Lorg/jpos/security/ModeOfUse;->code:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/security/ModeOfUse;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ModeOfUse[code: %s, name: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
