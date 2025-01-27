.class public final enum Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/pci/utils/PrivateAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "aoleinc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

.field public static final enum enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

.field public static final enum noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

.field private static final synthetic ocenlai:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    const-string v1, "CRYPTO_MK_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    new-instance v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    const-string v3, "CRYPTO_FORMAT_ECB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    new-instance v3, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    const-string v5, "CRYPTO_FORMAT_CBC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->ocenlai:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

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

    iput-byte p3, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;
    .locals 1

    const-class v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;
    .locals 1

    sget-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->ocenlai:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    invoke-virtual {v0}, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$aoleinc;->acileon:B

    return v0
.end method
