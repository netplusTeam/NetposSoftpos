.class public final enum Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/pci/utils/PrivateAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "noaceli"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

.field public static final enum enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

.field private static final synthetic nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

.field public static final enum noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

.field public static final enum ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    const-string v1, "CRYPTO_MOD_ENC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    new-instance v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    const-string v4, "CRYPTO_MOD_DEC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    new-instance v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    const-string v6, "CRYPTO_MOD_SIGN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    new-instance v6, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    const-string v8, "CRYPTO_MOD_VERIFY"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    new-array v7, v7, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    sput-object v7, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

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

    iput-byte p3, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;
    .locals 1

    const-class v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;
    .locals 1

    sget-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    invoke-virtual {v0}, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$noaceli;->acileon:B

    return v0
.end method
