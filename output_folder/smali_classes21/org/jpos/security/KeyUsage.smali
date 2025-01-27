.class public Lorg/jpos/security/KeyUsage;
.super Ljava/lang/Object;
.source "KeyUsage.java"


# static fields
.field public static final BDK:Lorg/jpos/security/KeyUsage;

.field public static final CVK:Lorg/jpos/security/KeyUsage;

.field public static final EMVACMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVCPMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVDAMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVDNMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVMPMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVOTMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVSCMK:Lorg/jpos/security/KeyUsage;

.field public static final EMVSIMK:Lorg/jpos/security/KeyUsage;

.field public static final ENC:Lorg/jpos/security/KeyUsage;

.field public static final IKEY:Lorg/jpos/security/KeyUsage;

.field public static final INIT:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC0:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC1:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC2:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC3:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC4:Lorg/jpos/security/KeyUsage;

.field public static final ISOMAC5:Lorg/jpos/security/KeyUsage;

.field public static final KEK:Lorg/jpos/security/KeyUsage;

.field public static final KEKWRAP:Lorg/jpos/security/KeyUsage;

.field public static final PINENC:Lorg/jpos/security/KeyUsage;

.field public static final PINV3624:Lorg/jpos/security/KeyUsage;

.field public static final PINVER:Lorg/jpos/security/KeyUsage;

.field protected static final TR31MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISAPVV:Lorg/jpos/security/KeyUsage;


# instance fields
.field private final code:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/KeyUsage;->TR31MAP:Ljava/util/Map;

    .line 39
    const-string v0, "B0"

    const-string v1, "BDK - Base Derivation Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->BDK:Lorg/jpos/security/KeyUsage;

    .line 44
    const-string v0, "B1"

    const-string v1, "IKEY - DUKPT Initial Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->IKEY:Lorg/jpos/security/KeyUsage;

    .line 49
    const-string v0, "C0"

    const-string v1, "CVK - Card Verification Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->CVK:Lorg/jpos/security/KeyUsage;

    .line 54
    const-string v0, "D0"

    const-string v1, "Data Encryption Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ENC:Lorg/jpos/security/KeyUsage;

    .line 61
    const-string v0, "I0"

    const-string v1, "Initialization Value"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->INIT:Lorg/jpos/security/KeyUsage;

    .line 66
    const-string v0, "K0"

    const-string v1, "Key Encryption / Wrapping Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->KEK:Lorg/jpos/security/KeyUsage;

    .line 71
    const-string v0, "K1"

    const-string v1, "Key Block Protection Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->KEKWRAP:Lorg/jpos/security/KeyUsage;

    .line 76
    const-string v0, "M0"

    const-string v1, "ISO 16609 MAC algorithm 1 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC0:Lorg/jpos/security/KeyUsage;

    .line 81
    const-string v0, "M1"

    const-string v1, "ISO 9797-1 MAC algorithm 1 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC1:Lorg/jpos/security/KeyUsage;

    .line 86
    const-string v0, "M2"

    const-string v1, "ISO 9797-1 MAC algorithm 2 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC2:Lorg/jpos/security/KeyUsage;

    .line 91
    const-string v0, "M3"

    const-string v1, "ISO 9797-1 MAC algorithm 3 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC3:Lorg/jpos/security/KeyUsage;

    .line 96
    const-string v0, "M4"

    const-string v1, "ISO 9797-1 MAC algorithm 4 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC4:Lorg/jpos/security/KeyUsage;

    .line 101
    const-string v0, "M5"

    const-string v1, "ISO 9797-1 MAC algorithm 5 Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->ISOMAC5:Lorg/jpos/security/KeyUsage;

    .line 106
    const-string v0, "P0"

    const-string v1, "PIN encryption key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->PINENC:Lorg/jpos/security/KeyUsage;

    .line 111
    const-string v0, "V0"

    const-string v1, "PIN verification key or other algorithm"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->PINVER:Lorg/jpos/security/KeyUsage;

    .line 116
    const-string v0, "V1"

    const-string v1, "PIN verification key, IBM 3624 algorithm"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->PINV3624:Lorg/jpos/security/KeyUsage;

    .line 121
    const-string v0, "V2"

    const-string v1, "PIN verification key, VISA PVV algorithm"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->VISAPVV:Lorg/jpos/security/KeyUsage;

    .line 126
    const-string v0, "E0"

    const-string v1, "EMV/Chip card Master Key, MKAC - Application Cryptogram"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVACMK:Lorg/jpos/security/KeyUsage;

    .line 131
    const-string v0, "E1"

    const-string v1, "EMV/Chip card Master Key, MKSMC - Secure Messaging for Confidentiality"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVSCMK:Lorg/jpos/security/KeyUsage;

    .line 136
    const-string v0, "E2"

    const-string v1, "EMV/Chip card Master Key, MKSMI - Secure Messaging for Integrity"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVSIMK:Lorg/jpos/security/KeyUsage;

    .line 141
    const-string v0, "E3"

    const-string v1, "EMV/Chip card Master Key, MKDAC - Data Authentication Code"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVDAMK:Lorg/jpos/security/KeyUsage;

    .line 146
    const-string v0, "E4"

    const-string v1, "EMV/Chip card Master Key, MKDN - Dynamic Numbers"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVDNMK:Lorg/jpos/security/KeyUsage;

    .line 151
    const-string v0, "E5"

    const-string v1, "EMV/Chip card Master Key, Card Personalization"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVCPMK:Lorg/jpos/security/KeyUsage;

    .line 156
    const-string v0, "E6"

    const-string v1, "EMV/Chip card Master Key, Other"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVOTMK:Lorg/jpos/security/KeyUsage;

    .line 161
    const-string v0, "E7"

    const-string v1, "EMV/Master Personalization Key"

    invoke-static {v0, v1}, Lorg/jpos/security/KeyUsage;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/KeyUsage;->EMVMPMK:Lorg/jpos/security/KeyUsage;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-string v0, "The code of key usage is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v0, "The name of key usage is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    iput-object p1, p0, Lorg/jpos/security/KeyUsage;->code:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lorg/jpos/security/KeyUsage;->name:Ljava/lang/String;

    .line 185
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the key block Key Usage code must be 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/KeyUsage;
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 188
    new-instance v0, Lorg/jpos/security/KeyUsage;

    invoke-direct {v0, p0, p1}, Lorg/jpos/security/KeyUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v0, "ku":Lorg/jpos/security/KeyUsage;
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    sget-object v1, Lorg/jpos/security/KeyUsage;->TR31MAP:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {v0}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object v0

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The TR-31 Key Usage code can by registered only once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The TR-31 Key Usage code can not consist of digits only"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation

    .line 236
    sget-object v0, Lorg/jpos/security/KeyUsage;->TR31MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static valueOfByCode(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lorg/jpos/security/KeyUsage;->TR31MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/KeyUsage;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/jpos/security/KeyUsage;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/jpos/security/KeyUsage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/security/KeyUsage;->code:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/security/KeyUsage;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "KeyUsage[code: %s, name: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
