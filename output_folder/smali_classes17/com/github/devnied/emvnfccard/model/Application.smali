.class public Lcom/github/devnied/emvnfccard/model/Application;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "Application.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/devnied/emvnfccard/model/AbstractData;",
        "Ljava/lang/Comparable<",
        "Lcom/github/devnied/emvnfccard/model/Application;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x287c7af824add03fL


# instance fields
.field private aid:[B

.field private amount:F

.field private applicationLabel:Ljava/lang/String;

.field private leftPinTry:I

.field private listTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private readingStep:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

.field private transactionCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/model/AbstractData;-><init>()V

    .line 43
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->NOT_SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->readingStep:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->transactionCounter:I

    .line 58
    iput v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->leftPinTry:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->priority:I

    .line 68
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->amount:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/github/devnied/emvnfccard/model/Application;)I
    .locals 2
    .param p1, "arg0"    # Lcom/github/devnied/emvnfccard/model/Application;

    .line 193
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->priority:I

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/github/devnied/emvnfccard/model/Application;

    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/model/Application;->compareTo(Lcom/github/devnied/emvnfccard/model/Application;)I

    move-result p1

    return p1
.end method

.method public getAid()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->aid:[B

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->amount:F

    return v0
.end method

.method public getApplicationLabel()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->applicationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftPinTry()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->leftPinTry:I

    return v0
.end method

.method public getListTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->listTransactions:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->priority:I

    return v0
.end method

.method public getReadingStep()Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->readingStep:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    return-object v0
.end method

.method public getTransactionCounter()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Application;->transactionCounter:I

    return v0
.end method

.method public setAid([B)V
    .locals 0
    .param p1, "aid"    # [B

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->aid:[B

    .line 170
    :cond_0
    return-void
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .line 227
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->amount:F

    .line 228
    return-void
.end method

.method public setApplicationLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationLabel"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->applicationLabel:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setLeftPinTry(I)V
    .locals 0
    .param p1, "leftPinTry"    # I

    .line 129
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->leftPinTry:I

    .line 130
    return-void
.end method

.method public setListTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "listTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;>;"
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->listTransactions:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 188
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->priority:I

    .line 189
    return-void
.end method

.method public setReadingStep(Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)V
    .locals 0
    .param p1, "readingStep"    # Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 210
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->readingStep:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    .line 211
    return-void
.end method

.method public setTransactionCounter(I)V
    .locals 0
    .param p1, "transactionCounter"    # I

    .line 110
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Application;->transactionCounter:I

    .line 111
    return-void
.end method
