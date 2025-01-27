.class Lcom/sleepycat/je/util/verify/DataVerifier$1;
.super Lcom/sleepycat/je/utilint/PollCondition;
.source "DataVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/verify/DataVerifier;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/verify/DataVerifier;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/DataVerifier;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/verify/DataVerifier;
    .param p2, "checkPeriodMs"    # J
    .param p4, "timeoutMs"    # J

    .line 137
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$1;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/utilint/PollCondition;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier$1;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v0}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$000(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    move-result-object v0

    .line 142
    .local v0, "task":Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->access$100(Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
