.class public final enum Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/pci/utils/PrivateAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "enolcai"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

.field public static final enum enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

.field private static final synthetic nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

.field public static final enum noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

.field public static final enum ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    const-string v1, "CRYPTO_SIZE_112"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->aoleinc:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    new-instance v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    const-string v4, "CRYPTO_SIZE_128"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->noaceli:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    new-instance v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    const-string v7, "CRYPTO_SIZE_168"

    const/4 v8, 0x5

    invoke-direct {v4, v7, v3, v8}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->enolcai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    new-instance v7, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    const-string v8, "CRYPTO_SIZE_256"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v6, v9}, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->ocenlai:Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v3

    aput-object v7, v8, v6

    sput-object v8, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

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

    iput-byte p3, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;
    .locals 1

    const-class v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;
    .locals 1

    sget-object v0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->nacieol:[Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    invoke-virtual {v0}, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/administrative/pci/utils/PrivateAlgo$enolcai;->acileon:B

    return v0
.end method
