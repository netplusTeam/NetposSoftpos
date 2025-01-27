.class Lcom/sleepycat/je/rep/util/ldiff/LDiff$MismatchException;
.super Ljava/lang/Exception;
.source "LDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/LDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MismatchException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiff;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/LDiff;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/LDiff;
    .param p2, "message"    # Ljava/lang/String;

    .line 779
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$MismatchException;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    .line 780
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 781
    return-void
.end method
