.class public Lch/qos/logback/core/joran/spi/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"


# static fields
.field private static EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actionListStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

.field private elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

.field eventPlayer:Lch/qos/logback/core/joran/spi/EventPlayer;

.field private final implicitActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/qos/logback/core/joran/action/ImplicitAction;",
            ">;"
        }
    .end annotation
.end field

.field private final interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

.field locator:Lorg/xml/sax/Locator;

.field private final ruleStore:Lch/qos/logback/core/joran/spi/RuleStore;

.field skip:Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/joran/spi/Interpreter;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/RuleStore;Lch/qos/logback/core/joran/spi/ElementPath;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .param p2, "rs"    # Lch/qos/logback/core/joran/spi/RuleStore;
    .param p3, "initialElementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 95
    new-instance v0, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    invoke-direct {v0, p1, p0}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;-><init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/Interpreter;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    .line 96
    iput-object p2, p0, Lch/qos/logback/core/joran/spi/Interpreter;->ruleStore:Lch/qos/logback/core/joran/spi/RuleStore;

    .line 97
    new-instance v0, Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-direct {v0, p1, p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;-><init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/Interpreter;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->implicitActions:Ljava/util/ArrayList;

    .line 99
    iput-object p3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->actionListStack:Ljava/util/Stack;

    .line 101
    new-instance v0, Lch/qos/logback/core/joran/spi/EventPlayer;

    invoke-direct {v0, p0}, Lch/qos/logback/core/joran/spi/EventPlayer;-><init>(Lch/qos/logback/core/joran/spi/Interpreter;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->eventPlayer:Lch/qos/logback/core/joran/spi/EventPlayer;

    .line 102
    return-void
.end method

.method private callBodyAction(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 281
    .local p1, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-nez p1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/joran/action/Action;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/action/Action;

    .line 289
    .local v1, "action":Lch/qos/logback/core/joran/action/Action;
    :try_start_0
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-virtual {v1, v2, p2}, Lch/qos/logback/core/joran/action/Action;->body(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/ActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_1

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "ae":Lch/qos/logback/core/joran/spi/ActionException;
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in end() methd for action ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .end local v1    # "action":Lch/qos/logback/core/joran/action/Action;
    .end local v2    # "ae":Lch/qos/logback/core/joran/spi/ActionException;
    :goto_1
    goto :goto_0

    .line 294
    :cond_1
    return-void
.end method

.method private callEndAction(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 297
    .local p1, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    const-string v0, "]"

    if-nez p1, :cond_0

    .line 298
    return-void

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/joran/action/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/action/Action;

    .line 309
    .local v2, "action":Lch/qos/logback/core/joran/action/Action;
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-virtual {v2, v3, p2}, Lch/qos/logback/core/joran/action/Action;->end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 314
    :catch_0
    move-exception v3

    .line 316
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException in Action for tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 310
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 313
    .local v3, "ae":Lch/qos/logback/core/joran/spi/ActionException;
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActionException in Action for tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v3    # "ae":Lch/qos/logback/core/joran/spi/ActionException;
    :goto_1
    nop

    .line 318
    .end local v2    # "action":Lch/qos/logback/core/joran/action/Action;
    :goto_2
    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method private endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->actionListStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    .local v0, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/spi/ElementPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    goto :goto_0

    .line 192
    :cond_0
    sget-object v1, Lch/qos/logback/core/joran/spi/Interpreter;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_1

    .line 193
    invoke-virtual {p0, p2, p3}, Lch/qos/logback/core/joran/spi/Interpreter;->getTagName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/joran/spi/Interpreter;->callEndAction(Ljava/util/List;Ljava/lang/String;)V

    .line 197
    :cond_1
    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/ElementPath;->pop()V

    .line 198
    return-void
.end method

.method private pushEmptyActionList()V
    .locals 2

    .line 158
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->actionListStack:Ljava/util/Stack;

    sget-object v1, Lch/qos/logback/core/joran/spi/Interpreter;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method private startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;

    .line 133
    invoke-virtual {p0, p2, p3}, Lch/qos/logback/core/joran/spi/Interpreter;->getTagName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "tagName":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/spi/ElementPath;->push(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lch/qos/logback/core/joran/spi/Interpreter;->pushEmptyActionList()V

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {p0, v1, p4}, Lch/qos/logback/core/joran/spi/Interpreter;->getApplicableActionList(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;)Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-eqz v1, :cond_1

    .line 144
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/Interpreter;->actionListStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0, v1, v0, p4}, Lch/qos/logback/core/joran/spi/Interpreter;->callBeginAction(Ljava/util/List;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0}, Lch/qos/logback/core/joran/spi/Interpreter;->pushEmptyActionList()V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no applicable action for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], current ElementPath  is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "errMsg":Ljava/lang/String;
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    invoke-virtual {v3, v2}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;)V

    .line 152
    .end local v2    # "errMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method


# virtual methods
.method public addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V
    .locals 1
    .param p1, "ia"    # Lch/qos/logback/core/joran/action/ImplicitAction;

    .line 219
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->implicitActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method callBeginAction(Ljava/util/List;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .line 259
    .local p1, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    const-string v0, "]"

    if-nez p1, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/joran/action/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/action/Action;

    .line 269
    .local v2, "action":Lch/qos/logback/core/joran/action/Action;
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-virtual {v2, v3, p2, p3}, Lch/qos/logback/core/joran/action/Action;->begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v3

    .line 274
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v4}, Lch/qos/logback/core/joran/spi/ElementPath;->duplicate()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v4

    iput-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 275
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException in Action for tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 270
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "e":Lch/qos/logback/core/joran/spi/ActionException;
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v4}, Lch/qos/logback/core/joran/spi/ElementPath;->duplicate()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v4

    iput-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->skip:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 272
    iget-object v4, p0, Lch/qos/logback/core/joran/spi/Interpreter;->cai:Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActionException in Action for tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v3    # "e":Lch/qos/logback/core/joran/spi/ActionException;
    :goto_1
    nop

    .line 277
    .end local v2    # "action":Lch/qos/logback/core/joran/action/Action;
    :goto_2
    goto :goto_0

    .line 278
    :cond_1
    return-void
.end method

.method public characters(Lch/qos/logback/core/joran/event/BodyEvent;)V
    .locals 3
    .param p1, "be"    # Lch/qos/logback/core/joran/event/BodyEvent;

    .line 163
    iget-object v0, p1, Lch/qos/logback/core/joran/event/BodyEvent;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 165
    invoke-virtual {p1}, Lch/qos/logback/core/joran/event/BodyEvent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->actionListStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 168
    .local v1, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    invoke-direct {p0, v1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->callBodyAction(Ljava/util/List;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public endElement(Lch/qos/logback/core/joran/event/EndEvent;)V
    .locals 3
    .param p1, "endEvent"    # Lch/qos/logback/core/joran/event/EndEvent;

    .line 178
    iget-object v0, p1, Lch/qos/logback/core/joran/event/EndEvent;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 179
    iget-object v0, p1, Lch/qos/logback/core/joran/event/EndEvent;->namespaceURI:Ljava/lang/String;

    iget-object v1, p1, Lch/qos/logback/core/joran/event/EndEvent;->localName:Ljava/lang/String;

    iget-object v2, p1, Lch/qos/logback/core/joran/event/EndEvent;->qName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lch/qos/logback/core/joran/spi/Interpreter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method getApplicableActionList(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;)Ljava/util/List;
    .locals 2
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->ruleStore:Lch/qos/logback/core/joran/spi/RuleStore;

    invoke-interface {v0, p1}, Lch/qos/logback/core/joran/spi/RuleStore;->matchActions(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "applicableActionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-nez v0, :cond_0

    .line 252
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-virtual {p0, p1, p2, v1}, Lch/qos/logback/core/joran/spi/Interpreter;->lookupImplicitAction(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/util/List;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method public getEventPlayer()Lch/qos/logback/core/joran/spi/EventPlayer;
    .locals 1

    .line 105
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->eventPlayer:Lch/qos/logback/core/joran/spi/EventPlayer;

    return-object v0
.end method

.method public getExecutionContext()Lch/qos/logback/core/joran/spi/InterpretationContext;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    return-object v0
.end method

.method public getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;
    .locals 1

    .line 120
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    return-object v0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 201
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getRuleStore()Lch/qos/logback/core/joran/spi/RuleStore;
    .locals 1

    .line 322
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->ruleStore:Lch/qos/logback/core/joran/spi/RuleStore;

    return-object v0
.end method

.method getTagName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;

    .line 209
    move-object v0, p1

    .line 211
    .local v0, "tagName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 212
    :cond_0
    move-object v0, p2

    .line 215
    :cond_1
    return-object v0
.end method

.method lookupImplicitAction(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/util/List;
    .locals 5
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            "Lorg/xml/sax/Attributes;",
            "Lch/qos/logback/core/joran/spi/InterpretationContext;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->implicitActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 231
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/Interpreter;->implicitActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/action/ImplicitAction;

    .line 233
    .local v2, "ia":Lch/qos/logback/core/joran/action/ImplicitAction;
    invoke-virtual {v2, p1, p2, p3}, Lch/qos/logback/core/joran/action/ImplicitAction;->isApplicable(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v3, "actionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-object v3

    .line 230
    .end local v2    # "ia":Lch/qos/logback/core/joran/action/ImplicitAction;
    .end local v3    # "actionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "l"    # Lorg/xml/sax/Locator;

    .line 205
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/Interpreter;->locator:Lorg/xml/sax/Locator;

    .line 206
    return-void
.end method

.method public setInterpretationContextPropertiesMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/Interpreter;->interpretationContext:Lch/qos/logback/core/joran/spi/InterpretationContext;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->setPropertiesMap(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public startDocument()V
    .locals 0

    .line 124
    return-void
.end method

.method public startElement(Lch/qos/logback/core/joran/event/StartEvent;)V
    .locals 4
    .param p1, "se"    # Lch/qos/logback/core/joran/event/StartEvent;

    .line 127
    invoke-virtual {p1}, Lch/qos/logback/core/joran/event/StartEvent;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 128
    iget-object v0, p1, Lch/qos/logback/core/joran/event/StartEvent;->namespaceURI:Ljava/lang/String;

    iget-object v1, p1, Lch/qos/logback/core/joran/event/StartEvent;->localName:Ljava/lang/String;

    iget-object v2, p1, Lch/qos/logback/core/joran/event/StartEvent;->qName:Ljava/lang/String;

    iget-object v3, p1, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-direct {p0, v0, v1, v2, v3}, Lch/qos/logback/core/joran/spi/Interpreter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 129
    return-void
.end method
