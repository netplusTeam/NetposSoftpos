.class public final enum Lcom/alcineo/softpos/eliocna$ocenlai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/eliocna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ocenlai"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/eliocna$ocenlai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/softpos/eliocna$ocenlai;

.field public static final enum enolcai:Lcom/alcineo/softpos/eliocna$ocenlai;

.field private static final synthetic nacieol:[Lcom/alcineo/softpos/eliocna$ocenlai;

.field public static final enum noaceli:Lcom/alcineo/softpos/eliocna$ocenlai;

.field private static enum ocenlai:Lcom/alcineo/softpos/eliocna$ocenlai;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alcineo/softpos/eliocna$ocenlai;

    const-string v1, "CRYPTO_SIZE_112"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/eliocna$ocenlai;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/eliocna$ocenlai;->aoleinc:Lcom/alcineo/softpos/eliocna$ocenlai;

    new-instance v1, Lcom/alcineo/softpos/eliocna$ocenlai;

    const-string v4, "CRYPTO_SIZE_128"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/alcineo/softpos/eliocna$ocenlai;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/eliocna$ocenlai;->noaceli:Lcom/alcineo/softpos/eliocna$ocenlai;

    new-instance v4, Lcom/alcineo/softpos/eliocna$ocenlai;

    const-string v7, "CRYPTO_SIZE_168"

    const/4 v8, 0x5

    invoke-direct {v4, v7, v3, v8}, Lcom/alcineo/softpos/eliocna$ocenlai;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/alcineo/softpos/eliocna$ocenlai;->enolcai:Lcom/alcineo/softpos/eliocna$ocenlai;

    new-instance v7, Lcom/alcineo/softpos/eliocna$ocenlai;

    const-string v8, "CRYPTO_SIZE_256"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v6, v9}, Lcom/alcineo/softpos/eliocna$ocenlai;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/alcineo/softpos/eliocna$ocenlai;->ocenlai:Lcom/alcineo/softpos/eliocna$ocenlai;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alcineo/softpos/eliocna$ocenlai;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v3

    aput-object v7, v8, v6

    sput-object v8, Lcom/alcineo/softpos/eliocna$ocenlai;->nacieol:[Lcom/alcineo/softpos/eliocna$ocenlai;

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

    iput-byte p3, p0, Lcom/alcineo/softpos/eliocna$ocenlai;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/eliocna$ocenlai;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/eliocna$ocenlai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/eliocna$ocenlai;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/eliocna$ocenlai;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/eliocna$ocenlai;->nacieol:[Lcom/alcineo/softpos/eliocna$ocenlai;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/eliocna$ocenlai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/eliocna$ocenlai;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/softpos/eliocna$ocenlai;->acileon:B

    return v0
.end method
