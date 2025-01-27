.class public final enum Lcom/mastercard/terminalsdk/objects/CvmType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/CvmType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CVM_BIOMETRIC:Lcom/mastercard/terminalsdk/objects/CvmType;

.field public static final enum CVM_NO_CVM:Lcom/mastercard/terminalsdk/objects/CvmType;

.field public static final enum CVM_OFFLINE_PIN:Lcom/mastercard/terminalsdk/objects/CvmType;

.field public static final enum CVM_ONLINE_PIN:Lcom/mastercard/terminalsdk/objects/CvmType;

.field public static final enum CVM_SIGNATURE:Lcom/mastercard/terminalsdk/objects/CvmType;

.field private static final synthetic d:[Lcom/mastercard/terminalsdk/objects/CvmType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/mastercard/terminalsdk/objects/CvmType;

    const-string v1, "CVM_OFFLINE_PIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/objects/CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/CvmType;->CVM_OFFLINE_PIN:Lcom/mastercard/terminalsdk/objects/CvmType;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/CvmType;

    const-string v3, "CVM_ONLINE_PIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mastercard/terminalsdk/objects/CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/CvmType;->CVM_ONLINE_PIN:Lcom/mastercard/terminalsdk/objects/CvmType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/CvmType;

    const-string v5, "CVM_BIOMETRIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mastercard/terminalsdk/objects/CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/CvmType;->CVM_BIOMETRIC:Lcom/mastercard/terminalsdk/objects/CvmType;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/CvmType;

    const-string v7, "CVM_SIGNATURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mastercard/terminalsdk/objects/CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/CvmType;->CVM_SIGNATURE:Lcom/mastercard/terminalsdk/objects/CvmType;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/CvmType;

    const-string v9, "CVM_NO_CVM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mastercard/terminalsdk/objects/CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/CvmType;->CVM_NO_CVM:Lcom/mastercard/terminalsdk/objects/CvmType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mastercard/terminalsdk/objects/CvmType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mastercard/terminalsdk/objects/CvmType;->d:[Lcom/mastercard/terminalsdk/objects/CvmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/CvmType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/CvmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/CvmType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/CvmType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/CvmType;->d:[Lcom/mastercard/terminalsdk/objects/CvmType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/CvmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/CvmType;

    return-object v0
.end method
