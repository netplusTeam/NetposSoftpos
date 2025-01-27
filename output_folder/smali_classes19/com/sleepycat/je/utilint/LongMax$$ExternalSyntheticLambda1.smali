.class public final synthetic Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/utilint/LongMax;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/utilint/LongMax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda1;->f$0:Lcom/sleepycat/je/utilint/LongMax;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongMax$$ExternalSyntheticLambda1;->f$0:Lcom/sleepycat/je/utilint/LongMax;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongMax;->lambda$add$1(Lcom/sleepycat/je/utilint/LongMax;J)J

    move-result-wide p1

    return-wide p1
.end method
