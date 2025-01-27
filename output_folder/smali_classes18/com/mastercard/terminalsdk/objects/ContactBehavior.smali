.class public Lcom/mastercard/terminalsdk/objects/ContactBehavior;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:B

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->a:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->d:Z

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->d:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    iput-object v2, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->c:Z

    iput-byte v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->j:B

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->h:Z

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->g:Z

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->f:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->i:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->o:Z

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->n:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->m:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->l:Z

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->k:Z

    iput-boolean v1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->s:Z

    return-void
.end method


# virtual methods
.method public final cdaModeOfOperationNeverAtGenAC1Arqc()Z
    .locals 2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->c:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->a:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->g:Z

    :cond_1
    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->g:Z

    return v0
.end method

.method public final cdaModeOfOperationNeverAtGenAC2Tc()Z
    .locals 2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->c:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->f:Z

    :cond_1
    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->f:Z

    return v0
.end method

.method public final detectCdaFailureBeforeTAA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->h:Z

    return v0
.end method

.method public final forcedAcceptance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->c:Z

    return v0
.end method

.method public final getDefaultACProcedureBehavior()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->n:Z

    return v0
.end method

.method public getForcedTransactionType()B
    .locals 1

    iget-byte v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->j:B

    return v0
.end method

.method public final isAdviceSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->m:Z

    return v0
.end method

.method public final isCertificateRevocationSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->s:Z

    return v0
.end method

.method public final isExceptionFileCheckSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->l:Z

    return v0
.end method

.method public final isGetDataPTCSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->b:Z

    return v0
.end method

.method public final isScriptLengthGreaterThan128Bytes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->k:Z

    return v0
.end method

.method public final processDefaultActionCodesPostFirstGenAC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->o:Z

    return v0
.end method

.method public final processDefaultActionCodesPriorToFirstGenAC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->i:Z

    return v0
.end method

.method public final pseIsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->a:Z

    return v0
.end method

.method public final transactionIsToBeForcedOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->d:Z

    return v0
.end method

.method public updateAdviceSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->m:Z

    return-void
.end method

.method public updateCdaFailureDetectionBeforeTAA(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->h:Z

    return-void
.end method

.method public updateCdaModeOfOperation(Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    return-void
.end method

.method public updateCertificateRevocationSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->s:Z

    return-void
.end method

.method public updateDefaultACProcedure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->n:Z

    return-void
.end method

.method public updateDefaultActionCodesPostFirstGenAC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->o:Z

    return-void
.end method

.method public updateDefaultActionCodesPriorToFirstGenAC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->i:Z

    return-void
.end method

.method public updateExceptionFileCheckSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->l:Z

    return-void
.end method

.method public updateForceAcceptanceStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->c:Z

    return-void
.end method

.method public updateForceOnlineCapability(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->d:Z

    return-void
.end method

.method public updateForceTransactionType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->j:B

    return-void
.end method

.method public updateGetDataPTCSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->b:Z

    return-void
.end method

.method public updateIssuerScriptLengthSupportGreaterThan128Bytes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->k:Z

    return-void
.end method

.method public updatePseSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior;->a:Z

    return-void
.end method
