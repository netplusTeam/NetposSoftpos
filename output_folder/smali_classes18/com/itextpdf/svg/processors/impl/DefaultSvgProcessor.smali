.class public Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;
.super Ljava/lang/Object;
.source "DefaultSvgProcessor.java"

# interfaces
.implements Lcom/itextpdf/svg/processors/ISvgProcessor;


# instance fields
.field private context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

.field private cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

.field private namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

.field private rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private createResultAndClean()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->pop()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    return-object v0
.end method

.method private processAsText(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 244
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    return v0
.end method

.method private processText(Lcom/itextpdf/styledxmlparser/node/ITextNode;)V
    .locals 4
    .param p1, "textNode"    # Lcom/itextpdf/styledxmlparser/node/ITextNode;

    .line 253
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->top()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    .line 255
    .local v0, "parentRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v1, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/ITextNode;->wholeText()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "wholeText":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/itextpdf/svg/utils/SvgTextUtil;->isOnlyWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    new-instance v2, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    invoke-direct {v2}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;-><init>()V

    .line 259
    .local v2, "textLeaf":Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
    invoke-virtual {v2, v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 260
    const-string/jumbo v3, "text_content"

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v3, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    .line 264
    .end local v1    # "wholeText":Ljava/lang/String;
    .end local v2    # "textLeaf":Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
    :cond_0
    return-void
.end method

.method private visit(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 7
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 186
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_6

    .line 187
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 189
    .local v0, "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    invoke-interface {v1, v0}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 190
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->top()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    .line 191
    .local v1, "parentRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    iget-object v2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    invoke-interface {v2, v0, v1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    .line 192
    .local v2, "renderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    if-eqz v2, :cond_4

    .line 193
    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    iget-object v4, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v4}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/itextpdf/styledxmlparser/css/ICssResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object v3

    .line 195
    .local v3, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->setStyles(Ljava/util/Map;)V

    .line 197
    invoke-interface {v2, v3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 199
    const-string v4, "id"

    invoke-interface {v2, v4}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "attribute":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 201
    iget-object v5, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    instance-of v5, v2, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    if-eqz v5, :cond_1

    .line 205
    instance-of v5, v1, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    if-eqz v5, :cond_3

    .line 208
    move-object v5, v1

    check-cast v5, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-virtual {v5, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    goto :goto_0

    .line 212
    :cond_1
    instance-of v5, v2, Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;

    if-nez v5, :cond_3

    instance-of v5, v1, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    if-nez v5, :cond_3

    .line 213
    instance-of v5, v1, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;

    if-eqz v5, :cond_2

    .line 214
    move-object v5, v1

    check-cast v5, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;

    invoke-interface {v5, v2}, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    goto :goto_0

    .line 215
    :cond_2
    instance-of v5, v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v5, :cond_3

    instance-of v5, v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    if-eqz v5, :cond_3

    .line 217
    move-object v5, v1

    check-cast v5, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    move-object v6, v2

    check-cast v6, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    invoke-virtual {v5, v6}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    .line 221
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->push(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 224
    .end local v3    # "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "attribute":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 225
    .local v4, "childNode":Lcom/itextpdf/styledxmlparser/node/INode;
    invoke-direct {p0, v4}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->visit(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 226
    .end local v4    # "childNode":Lcom/itextpdf/styledxmlparser/node/INode;
    goto :goto_1

    .line 228
    :cond_5
    if-eqz v2, :cond_7

    .line 229
    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v3}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->pop()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    goto :goto_2

    .line 232
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v1    # "parentRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v2    # "renderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_6
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processAsText(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processText(Lcom/itextpdf/styledxmlparser/node/ITextNode;)V

    goto :goto_3

    .line 232
    :cond_7
    :goto_2
    nop

    .line 235
    :goto_3
    return-void
.end method


# virtual methods
.method executeDepthFirstTraversal(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 5
    .param p1, "startingNode"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 149
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 152
    .local v0, "rootElementNode":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    .line 153
    .local v1, "startingRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/itextpdf/styledxmlparser/css/ICssResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object v2

    .line 155
    .local v2, "attributesAndStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->setStyles(Ljava/util/Map;)V

    .line 156
    invoke-interface {v1, v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 157
    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v3, v1}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->push(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 158
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 159
    .local v4, "rootChild":Lcom/itextpdf/styledxmlparser/node/INode;
    invoke-direct {p0, v4}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->visit(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 160
    .end local v4    # "rootChild":Lcom/itextpdf/styledxmlparser/node/INode;
    goto :goto_0

    .line 163
    .end local v0    # "rootElementNode":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v1    # "startingRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v2    # "attributesAndStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method findFirstElement(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .locals 5
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 275
    .local v0, "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 278
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 279
    .local v1, "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 281
    if-nez v1, :cond_0

    .line 282
    return-object v2

    .line 285
    :cond_0
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    return-object v2

    .line 289
    :cond_1
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 290
    .local v3, "child":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v4, v3, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v4, :cond_2

    .line 291
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v3    # "child":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_2
    goto :goto_1

    .line 294
    .end local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_3
    goto :goto_0

    .line 296
    :cond_4
    return-object v2
.end method

.method performSetup(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 2
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "converterProps"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 129
    new-instance v0, Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    .line 130
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    .line 135
    :goto_0
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {v0, p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;-><init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 136
    new-instance v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    .line 137
    new-instance v0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;

    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;-><init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->addFontFaceFonts(Lcom/itextpdf/styledxmlparser/css/ICssResolver;)V

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public process(Lcom/itextpdf/styledxmlparser/node/INode;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/svg/exceptions/SvgProcessingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 5
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "converterProps"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/svg/exceptions/SvgProcessingException;
        }
    .end annotation

    .line 96
    if-eqz p1, :cond_2

    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    move-object p2, v0

    .line 103
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->performSetup(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 106
    const-string/jumbo v0, "svg"

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->findFirstElement(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IElementNode;

    move-result-object v0

    .line 108
    .local v0, "svgRoot":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->executeDepthFirstTraversal(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 111
    invoke-direct {p0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->createResultAndClean()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    .line 112
    .local v1, "rootSvgRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    new-instance v2, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    iget-object v4, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {v2, v3, v1, v4}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;-><init>(Ljava/util/Map;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    return-object v2

    .line 114
    .end local v1    # "rootSvgRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_1
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "No root found"

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "svgRoot":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    :cond_2
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Input root value is null"

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
