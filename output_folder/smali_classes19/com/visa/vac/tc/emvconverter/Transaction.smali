.class public Lcom/visa/vac/tc/emvconverter/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activeInterface:Z

.field public amount:Ljava/lang/String;

.field public cvm:Ljava/lang/String;

.field public eligibleContact:Z

.field public eligibleContactless:Z

.field public eligibleQR:Z

.field public emvReader:Lcom/visa/vac/tc/emvconverter/EmvReader;

.field public errorCode:Ljava/lang/String;

.field public finalStatus:Ljava/lang/String;

.field public receipt:Ljava/lang/String;

.field public resultTlv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public transactionDisplay:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;

.field public transactionInterface:I

.field public transactionSequenceCounter:Ljava/lang/String;

.field public transactionType:Ljava/lang/String;

.field public useReader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Transaction;->resultTlv:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/Transaction;->resultTlv:Ljava/util/HashMap;

    .line 46
    :cond_0
    return-void
.end method
