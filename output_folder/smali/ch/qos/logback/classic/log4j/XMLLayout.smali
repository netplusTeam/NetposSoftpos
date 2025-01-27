.class public Lch/qos/logback/classic/log4j/XMLLayout;
.super Lch/qos/logback/core/LayoutBase;
.source "XMLLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/LayoutBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEFAULT_SIZE:I

.field private final UPPER_LIMIT:I

.field private buf:Ljava/lang/StringBuilder;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    .line 40
    const/16 v0, 0x100

    iput v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->DEFAULT_SIZE:I

    .line 41
    const/16 v1, 0x800

    iput v1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->UPPER_LIMIT:I

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->locationInfo:Z

    .line 45
    iput-boolean v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->properties:Z

    return-void
.end method


# virtual methods
.method public doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 10
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 101
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    if-le v0, v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v2, "<log4j:event logger=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\"\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "             timestamp=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "\" level=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "\" thread=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "\">\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "  <log4j:message>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v3, "</log4j:message>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 128
    .local v0, "tp":Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v0, :cond_2

    .line 129
    invoke-interface {v0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v3

    .line 130
    .local v3, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    iget-object v4, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v5, "  <log4j:throwable><![CDATA["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    move-object v4, v3

    .local v4, "arr$":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 132
    .local v7, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    iget-object v8, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    iget-object v8, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v8, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v7    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v4    # "arr$":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    iget-object v4, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v5, "]]></log4j:throwable>\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .end local v3    # "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    :cond_2
    iget-boolean v3, p0, Lch/qos/logback/classic/log4j/XMLLayout;->locationInfo:Z

    if-eqz v3, :cond_3

    .line 140
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 141
    .local v3, "callerDataArray":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 142
    aget-object v1, v3, v1

    .line 143
    .local v1, "immediateCallerData":Ljava/lang/StackTraceElement;
    iget-object v4, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v5, "  <log4j:locationInfo class=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v4, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v4, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "                      method=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "\" file=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "\" line=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    iget-object v2, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "\"/>\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .end local v1    # "immediateCallerData":Ljava/lang/StackTraceElement;
    .end local v3    # "callerDataArray":[Ljava/lang/StackTraceElement;
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/classic/log4j/XMLLayout;->getProperties()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v1

    .line 162
    .local v1, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 164
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "  <log4j:properties>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 166
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v6, "\r\n    <log4j:data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v5, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v5, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " value=\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v5, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v6, " />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 171
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v4, "\r\n  </log4j:properties>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .end local v1    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    iget-object v1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\r\n</log4j:event>\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doLayout(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 38
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/log4j/XMLLayout;->doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 182
    const-string/jumbo v0, "text/xml"

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lch/qos/logback/classic/log4j/XMLLayout;->properties:Z

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 63
    iput-boolean p1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->locationInfo:Z

    .line 64
    return-void
.end method

.method public setProperties(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 81
    iput-boolean p1, p0, Lch/qos/logback/classic/log4j/XMLLayout;->properties:Z

    .line 82
    return-void
.end method

.method public start()V
    .locals 0

    .line 49
    invoke-super {p0}, Lch/qos/logback/core/LayoutBase;->start()V

    .line 50
    return-void
.end method
