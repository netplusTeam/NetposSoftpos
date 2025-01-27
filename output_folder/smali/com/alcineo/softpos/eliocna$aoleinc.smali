.class public final enum Lcom/alcineo/softpos/eliocna$aoleinc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/eliocna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "aoleinc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/eliocna$aoleinc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/softpos/eliocna$aoleinc;

.field private static final synthetic enolcai:[Lcom/alcineo/softpos/eliocna$aoleinc;

.field public static final enum noaceli:Lcom/alcineo/softpos/eliocna$aoleinc;


# instance fields
.field private acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/alcineo/softpos/eliocna$aoleinc;

    const-string v1, "CRYPTO_ALGO_AES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/eliocna$aoleinc;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/eliocna$aoleinc;->aoleinc:Lcom/alcineo/softpos/eliocna$aoleinc;

    new-instance v1, Lcom/alcineo/softpos/eliocna$aoleinc;

    const-string v4, "CRYPTO_ALGO_TDES"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/alcineo/softpos/eliocna$aoleinc;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/eliocna$aoleinc;->noaceli:Lcom/alcineo/softpos/eliocna$aoleinc;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/alcineo/softpos/eliocna$aoleinc;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/alcineo/softpos/eliocna$aoleinc;->enolcai:[Lcom/alcineo/softpos/eliocna$aoleinc;

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

    iput-byte p3, p0, Lcom/alcineo/softpos/eliocna$aoleinc;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/eliocna$aoleinc;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/eliocna$aoleinc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/eliocna$aoleinc;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/eliocna$aoleinc;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/eliocna$aoleinc;->enolcai:[Lcom/alcineo/softpos/eliocna$aoleinc;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/eliocna$aoleinc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/eliocna$aoleinc;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/softpos/eliocna$aoleinc;->acileon:B

    return v0
.end method
