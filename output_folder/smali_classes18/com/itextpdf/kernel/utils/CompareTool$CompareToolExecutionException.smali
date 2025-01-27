.class public Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;
.super Ljava/lang/RuntimeException;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompareToolExecutionException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/kernel/utils/CompareTool;
    .param p2, "msg"    # Ljava/lang/String;

    .line 2509
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    .line 2510
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2511
    return-void
.end method
