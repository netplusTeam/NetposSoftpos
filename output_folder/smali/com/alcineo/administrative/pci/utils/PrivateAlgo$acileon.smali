.class public final enum Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/pci/utils/PrivateAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

.field public static final enum enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

.field private static final synthetic nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

.field public static final enum noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

.field public static final enum ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    const-string v1, "CRYPTO_ALGO_AES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    new-instance v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    const-string v4, "CRYPTO_ALGO_TDES"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    new-instance v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    const-string v6, "CRYPTO_ALGO_CMAC_TDES"

    const/4 v7, 0x2

    const/16 v8, -0x40

    invoke-direct {v4, v6, v7, v8}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    new-instance v6, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    const-string v8, "CRYPTO_ALGO_CMAC_AES"

    const/16 v9, -0x3f

    invoke-direct {v6, v8, v5, v9}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    sput-object v8, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$acileon;->acileon:B

    return v0
.end method
