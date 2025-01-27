.class public final enum Lorg/jpos/iso/PosDataCode$VerificationMethod;
.super Ljava/lang/Enum;
.source "PosDataCode.java"

# interfaces
.implements Lorg/jpos/iso/PosDataCode$Flag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/PosDataCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/iso/PosDataCode$VerificationMethod;",
        ">;",
        "Lorg/jpos/iso/PosDataCode$Flag;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum ACCOUNT_BASED_DIGITAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum MANUAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum NONE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_BIOGRAPHICS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_BIOMETRICS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_DIGITIZED_SIGNATURE_ANALYSIS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_MANUAL_VERIFICATION:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_PIN_ENCRYPTED:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum OFFLINE_PIN_IN_CLEAR:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static OFFSET:I

.field public static final enum ONLINE_PIN:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum PUBLIC_KEY_BASED_DIGITAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

.field public static final enum UNKNOWN:Lorg/jpos/iso/PosDataCode$VerificationMethod;


# instance fields
.field private description:Ljava/lang/String;

.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 66
    new-instance v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->UNKNOWN:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 67
    new-instance v1, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v4, "NONE"

    const/4 v5, 0x2

    const-string v6, "None"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/jpos/iso/PosDataCode$VerificationMethod;->NONE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 68
    new-instance v4, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v6, "MANUAL_SIGNATURE"

    const/4 v7, 0x4

    const-string v8, "Manual signature"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/jpos/iso/PosDataCode$VerificationMethod;->MANUAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 69
    new-instance v6, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v8, "ONLINE_PIN"

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-string v11, "Online PIN"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/jpos/iso/PosDataCode$VerificationMethod;->ONLINE_PIN:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 70
    new-instance v8, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v11, "OFFLINE_PIN_IN_CLEAR"

    const/16 v12, 0x10

    const-string v13, "Offline PIN in clear"

    invoke-direct {v8, v11, v7, v12, v13}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_PIN_IN_CLEAR:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 71
    new-instance v11, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v12, "OFFLINE_PIN_ENCRYPTED"

    const/4 v13, 0x5

    const/16 v14, 0x20

    const-string v15, "Offline PIN encrypted"

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_PIN_ENCRYPTED:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 72
    new-instance v12, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v14, "OFFLINE_DIGITIZED_SIGNATURE_ANALYSIS"

    const/4 v15, 0x6

    const/16 v13, 0x40

    const-string v7, "Offline digitized signature analysis"

    invoke-direct {v12, v14, v15, v13, v7}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_DIGITIZED_SIGNATURE_ANALYSIS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 73
    new-instance v7, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v13, "OFFLINE_BIOMETRICS"

    const/4 v14, 0x7

    const/16 v15, 0x80

    const-string v9, "Offline biometrics"

    invoke-direct {v7, v13, v14, v15, v9}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_BIOMETRICS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 74
    new-instance v9, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v13, "OFFLINE_MANUAL_VERIFICATION"

    const/16 v15, 0x100

    const-string v14, "Offline manual verification"

    invoke-direct {v9, v13, v10, v15, v14}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_MANUAL_VERIFICATION:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 75
    new-instance v13, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v14, "OFFLINE_BIOGRAPHICS"

    const/16 v15, 0x9

    const/16 v10, 0x200

    const-string v5, "Offline biographics"

    invoke-direct {v13, v14, v15, v10, v5}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFLINE_BIOGRAPHICS:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 76
    new-instance v5, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v10, "ACCOUNT_BASED_DIGITAL_SIGNATURE"

    const/16 v14, 0xa

    const/16 v15, 0x400

    const-string v3, "Account based digital signature"

    invoke-direct {v5, v10, v14, v15, v3}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/jpos/iso/PosDataCode$VerificationMethod;->ACCOUNT_BASED_DIGITAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 77
    new-instance v3, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const-string v10, "PUBLIC_KEY_BASED_DIGITAL_SIGNATURE"

    const/16 v15, 0xb

    const/16 v14, 0x800

    const-string v2, "Public key based digital signature"

    invoke-direct {v3, v10, v15, v14, v2}, Lorg/jpos/iso/PosDataCode$VerificationMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/jpos/iso/PosDataCode$VerificationMethod;->PUBLIC_KEY_BASED_DIGITAL_SIGNATURE:Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 65
    const/16 v2, 0xc

    new-array v2, v2, [Lorg/jpos/iso/PosDataCode$VerificationMethod;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const/4 v1, 0x6

    aput-object v12, v2, v1

    const/4 v1, 0x7

    aput-object v7, v2, v1

    const/16 v1, 0x8

    aput-object v9, v2, v1

    const/16 v1, 0x9

    aput-object v13, v2, v1

    const/16 v1, 0xa

    aput-object v5, v2, v1

    aput-object v3, v2, v15

    sput-object v2, Lorg/jpos/iso/PosDataCode$VerificationMethod;->$VALUES:[Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 92
    sput v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFSET:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "val"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->val:I

    .line 83
    iput-object p4, p0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->description:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/iso/PosDataCode$VerificationMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;

    return-object v0
.end method

.method public static values()[Lorg/jpos/iso/PosDataCode$VerificationMethod;
    .locals 1

    .line 65
    sget-object v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->$VALUES:[Lorg/jpos/iso/PosDataCode$VerificationMethod;

    invoke-virtual {v0}, [Lorg/jpos/iso/PosDataCode$VerificationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/iso/PosDataCode$VerificationMethod;

    return-object v0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 95
    sget v0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->OFFSET:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->val:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode$VerificationMethod;->description:Ljava/lang/String;

    return-object v0
.end method
