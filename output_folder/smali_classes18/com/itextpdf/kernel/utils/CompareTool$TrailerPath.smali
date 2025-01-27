.class Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
.super Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrailerPath"
.end annotation


# instance fields
.field private cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p2, "cmpDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "outDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2438
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;)V

    .line 2439
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2440
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2441
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Stack;)V
    .locals 0
    .param p2, "cmpDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "outDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;",
            ">;)V"
        }
    .end annotation

    .line 2444
    .local p4, "path":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;)V

    .line 2445
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2446
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2447
    iput-object p4, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    .line 2448
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 5

    .line 2494
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Stack;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;

    iget-object v1, v1, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2487
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;

    iget-object v1, v1, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2488
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v1, v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    .line 2489
    invoke-virtual {v0, v1}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2486
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2476
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2477
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    .line 2478
    .local v2, "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    mul-int/lit8 v0, v0, 0x1f

    .line 2479
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 2480
    .end local v2    # "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    goto :goto_0

    .line 2481
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2466
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Base cmp object: trailer. Base out object: trailer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    .line 2468
    .local v2, "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    .end local v2    # "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    goto :goto_0

    .line 2471
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 2452
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2453
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v1, "base"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 2454
    .local v1, "baseNode":Lorg/w3c/dom/Element;
    const-string v2, "cmp"

    const-string/jumbo v3, "trailer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const-string v2, "out"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2457
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    .line 2458
    .local v3, "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;->toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2459
    .end local v3    # "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    goto :goto_0

    .line 2460
    :cond_0
    return-object v0
.end method
