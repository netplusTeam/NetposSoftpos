.class public final enum Lcom/dspread/xpos/SaveCustomParam$CertificatesType;
.super Ljava/lang/Enum;
.source "SaveCustomParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/SaveCustomParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CertificatesType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/SaveCustomParam$CertificatesType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

.field public static final enum DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

.field public static final enum SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

.field public static final enum SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

.field private static final synthetic a:[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const-string v1, "DEVICE_CERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    .line 2
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const-string v1, "SERVER_SIGNING_CERT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    .line 3
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const-string v1, "SERCER_ENCRYPT_CERT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    .line 4
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const-string v1, "CertificatesChain"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    .line 5
    invoke-static {}, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->a()[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->a:[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/SaveCustomParam$CertificatesType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->a:[Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    return-object v0
.end method
