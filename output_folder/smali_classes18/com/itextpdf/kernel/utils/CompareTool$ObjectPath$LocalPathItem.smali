.class public abstract Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LocalPathItem"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;)V
    .locals 0
    .param p1, "this$1"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    .line 2272
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;->this$1:Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
.end method
