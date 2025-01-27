.class public Lcom/github/devnied/emvnfccard/model/Afl;
.super Ljava/lang/Object;
.source "Afl.java"


# instance fields
.field private firstRecord:I

.field private lastRecord:I

.field private offlineAuthentication:Z

.field private sfi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstRecord()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Afl;->firstRecord:I

    return v0
.end method

.method public getLastRecord()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Afl;->lastRecord:I

    return v0
.end method

.method public getSfi()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/Afl;->sfi:I

    return v0
.end method

.method public isOfflineAuthentication()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/github/devnied/emvnfccard/model/Afl;->offlineAuthentication:Z

    return v0
.end method

.method public setFirstRecord(I)V
    .locals 0
    .param p1, "firstRecord"    # I

    .line 81
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Afl;->firstRecord:I

    .line 82
    return-void
.end method

.method public setLastRecord(I)V
    .locals 0
    .param p1, "lastRecord"    # I

    .line 100
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Afl;->lastRecord:I

    .line 101
    return-void
.end method

.method public setOfflineAuthentication(Z)V
    .locals 0
    .param p1, "offlineAuthentication"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/model/Afl;->offlineAuthentication:Z

    .line 120
    return-void
.end method

.method public setSfi(I)V
    .locals 0
    .param p1, "sfi"    # I

    .line 62
    iput p1, p0, Lcom/github/devnied/emvnfccard/model/Afl;->sfi:I

    .line 63
    return-void
.end method
