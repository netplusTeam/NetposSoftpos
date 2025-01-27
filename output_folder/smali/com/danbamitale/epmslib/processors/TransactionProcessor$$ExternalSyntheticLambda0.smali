.class public final synthetic Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/solab/iso8583/IsoMessage;

.field public final synthetic f$1:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

.field public final synthetic f$2:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/solab/iso8583/IsoMessage;

    iput-object p2, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iput-object p3, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    iput-object p4, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/solab/iso8583/IsoMessage;

    iget-object v1, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iget-object v2, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    iget-object v3, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->$r8$lambda$DWA3KbkEKSdJDEQKYxIdGOGqCb8(Lcom/solab/iso8583/IsoMessage;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    return-object v0
.end method
