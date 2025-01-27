.class public Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "TokenBufferReadContext.java"


# instance fields
.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected final _parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

.field protected final _startLocation:Lcom/fasterxml/jackson/core/JsonLocation;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>(II)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 61
    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonStreamContext;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/core/JsonStreamContext;
    .param p2, "startLoc"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .line 47
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>(Lcom/fasterxml/jackson/core/JsonStreamContext;)V

    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentValue:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonStreamContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/core/JsonStreamContext;
    .param p2, "srcRef"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>(Lcom/fasterxml/jackson/core/JsonStreamContext;)V

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 36
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentValue:Ljava/lang/Object;

    .line 38
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 40
    .local v0, "rc":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 41
    .end local v0    # "rc":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 44
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;II)V
    .locals 1
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
    .param p2, "type"    # I
    .param p3, "index"    # I

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>(II)V

    .line 66
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 67
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 68
    return-void
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/JsonStreamContext;)Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
    .locals 2
    .param p0, "origContext"    # Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>()V

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>(Lcom/fasterxml/jackson/core/JsonStreamContext;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v0
.end method


# virtual methods
.method public createChildArrayContext()Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
    .locals 3

    .line 95
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;II)V

    return-object v0
.end method

.method public createChildObjectContext()Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
    .locals 3

    .line 99
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;II)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    return-object v0
.end method

.method public hasCurrentName()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parentOrCopy()Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_parent:Lcom/fasterxml/jackson/core/JsonStreamContext;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    return-object v0

    .line 113
    :cond_0
    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>()V

    return-object v0

    .line 116
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_startLocation:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;-><init>(Lcom/fasterxml/jackson/core/JsonStreamContext;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v1
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBufferReadContext;->_currentValue:Ljava/lang/Object;

    .line 78
    return-void
.end method
