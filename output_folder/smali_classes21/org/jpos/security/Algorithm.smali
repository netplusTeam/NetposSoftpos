.class public final enum Lorg/jpos/security/Algorithm;
.super Ljava/lang/Enum;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/Algorithm;

.field public static final enum AES:Lorg/jpos/security/Algorithm;

.field public static final enum DES:Lorg/jpos/security/Algorithm;

.field public static final enum DSA:Lorg/jpos/security/Algorithm;

.field public static final enum EC:Lorg/jpos/security/Algorithm;

.field public static final enum HMAC:Lorg/jpos/security/Algorithm;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/jpos/security/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RSA:Lorg/jpos/security/Algorithm;

.field public static final enum TDES:Lorg/jpos/security/Algorithm;


# instance fields
.field private final code:C

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lorg/jpos/security/Algorithm;

    const-string v1, "AES"

    const/4 v2, 0x0

    const/16 v3, 0x41

    const-string v4, "AES - Advanced Encryption Standard"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lorg/jpos/security/Algorithm;->AES:Lorg/jpos/security/Algorithm;

    .line 41
    new-instance v1, Lorg/jpos/security/Algorithm;

    const-string v3, "DES"

    const/4 v4, 0x1

    const/16 v5, 0x44

    const-string v6, "DES - Data Encryption Standard"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v1, Lorg/jpos/security/Algorithm;->DES:Lorg/jpos/security/Algorithm;

    .line 46
    new-instance v3, Lorg/jpos/security/Algorithm;

    const-string v5, "EC"

    const/4 v6, 0x2

    const/16 v7, 0x45

    const-string v8, "Elliptic curve"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v3, Lorg/jpos/security/Algorithm;->EC:Lorg/jpos/security/Algorithm;

    .line 51
    new-instance v5, Lorg/jpos/security/Algorithm;

    const-string v7, "HMAC"

    const/4 v8, 0x3

    const/16 v9, 0x48

    const-string v10, "HMAC - Hash Message Authentication Code"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v5, Lorg/jpos/security/Algorithm;->HMAC:Lorg/jpos/security/Algorithm;

    .line 56
    new-instance v7, Lorg/jpos/security/Algorithm;

    const-string v9, "RSA"

    const/4 v10, 0x4

    const/16 v11, 0x52

    const-string v12, "RSA - Rivest Shamir Adleman"

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v7, Lorg/jpos/security/Algorithm;->RSA:Lorg/jpos/security/Algorithm;

    .line 61
    new-instance v9, Lorg/jpos/security/Algorithm;

    const-string v11, "DSA"

    const/4 v12, 0x5

    const/16 v13, 0x53

    const-string v14, "DSA - Digital Signature Algorithm"

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v9, Lorg/jpos/security/Algorithm;->DSA:Lorg/jpos/security/Algorithm;

    .line 68
    new-instance v11, Lorg/jpos/security/Algorithm;

    const-string v13, "TDES"

    const/4 v14, 0x6

    const/16 v15, 0x54

    const-string v12, "Triple DES - Triple Data Encryption Standard"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jpos/security/Algorithm;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v11, Lorg/jpos/security/Algorithm;->TDES:Lorg/jpos/security/Algorithm;

    .line 31
    const/4 v12, 0x7

    new-array v12, v12, [Lorg/jpos/security/Algorithm;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    aput-object v11, v12, v14

    sput-object v12, Lorg/jpos/security/Algorithm;->$VALUES:[Lorg/jpos/security/Algorithm;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/Algorithm;->MAP:Ljava/util/Map;

    .line 74
    invoke-static {}, Lorg/jpos/security/Algorithm;->values()[Lorg/jpos/security/Algorithm;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    .local v3, "alg":Lorg/jpos/security/Algorithm;
    sget-object v4, Lorg/jpos/security/Algorithm;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jpos/security/Algorithm;->getCode()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v3    # "alg":Lorg/jpos/security/Algorithm;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
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

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    const-string p1, "The name of algorithm is required"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-char p3, p0, Lorg/jpos/security/Algorithm;->code:C

    .line 84
    iput-object p4, p0, Lorg/jpos/security/Algorithm;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/Algorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/jpos/security/Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/Algorithm;

    return-object v0
.end method

.method public static valueOfByCode(C)Lorg/jpos/security/Algorithm;
    .locals 2
    .param p0, "code"    # C

    .line 119
    sget-object v0, Lorg/jpos/security/Algorithm;->MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/Algorithm;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/Algorithm;
    .locals 1

    .line 31
    sget-object v0, Lorg/jpos/security/Algorithm;->$VALUES:[Lorg/jpos/security/Algorithm;

    invoke-virtual {v0}, [Lorg/jpos/security/Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/Algorithm;

    return-object v0
.end method


# virtual methods
.method public getCode()C
    .locals 1

    .line 93
    iget-char v0, p0, Lorg/jpos/security/Algorithm;->code:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jpos/security/Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-char v1, p0, Lorg/jpos/security/Algorithm;->code:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/security/Algorithm;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Algorithm[code: %s, name: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
