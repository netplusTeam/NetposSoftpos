.class public Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;
.super Ljava/lang/Object;
.source "OneShotChannelAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/OneShotChannelAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Worker"
.end annotation


# instance fields
.field channel:Lorg/jpos/iso/ISOChannel;

.field id:I

.field final synthetic this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/OneShotChannelAdaptor;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptor;
    .param p2, "i"    # I

    .line 145
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    .line 148
    return-void
.end method

.method private addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V
    .locals 7
    .param p1, "channel"    # Lorg/jpos/iso/FilteredChannel;
    .param p2, "e"    # Lorg/jdom2/Element;
    .param p3, "fact"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 239
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Element;

    .line 241
    .local v2, "f":Lorg/jdom2/Element;
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "clazz":Ljava/lang/String;
    invoke-virtual {p3, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOFilter;

    .line 243
    .local v4, "filter":Lorg/jpos/iso/ISOFilter;
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 244
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 245
    const-string v5, "direction"

    invoke-static {v2, v5}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "direction":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 247
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 248
    :cond_0
    const-string v6, "incoming"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 249
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 250
    :cond_1
    const-string v6, "outgoing"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 252
    :cond_2
    const-string v6, "both"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 254
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 256
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "f":Lorg/jdom2/Element;
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v4    # "filter":Lorg/jpos/iso/ISOFilter;
    .end local v5    # "direction":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 257
    :cond_4
    return-void
.end method

.method private newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "f"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 211
    const-string v0, "class"

    invoke-static {p1, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "channelName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 215
    const-string v1, "packager"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "packagerName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOChannel;

    .line 219
    .local v2, "channel":Lorg/jpos/iso/ISOChannel;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p2, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOPackager;

    .line 221
    .local v3, "packager":Lorg/jpos/iso/ISOPackager;
    invoke-interface {v2, v3}, Lorg/jpos/iso/ISOChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 222
    invoke-virtual {p2, v3, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 224
    .end local v3    # "packager":Lorg/jpos/iso/ISOPackager;
    :cond_0
    const-string v3, "header"

    invoke-static {p1, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setHeader"

    invoke-static {v2, v4, v3}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 226
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 228
    instance-of v3, v2, Lorg/jpos/iso/FilteredChannel;

    if-eqz v3, :cond_1

    .line 229
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/FilteredChannel;

    invoke-direct {p0, v3, p1, p2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V

    .line 231
    :cond_1
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jpos/iso/ISOChannel;->setName(Ljava/lang/String;)V

    .line 233
    :cond_2
    return-object v2

    .line 213
    .end local v1    # "packagerName":Ljava/lang/String;
    .end local v2    # "channel":Lorg/jpos/iso/ISOChannel;
    :cond_3
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "class attribute missing from channel element."

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public initChannel()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 191
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 192
    .local v1, "e":Lorg/jdom2/Element;
    if-eqz v1, :cond_2

    .line 195
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    .line 197
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getSocketFactory()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "socketFactoryString":Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    instance-of v3, v3, Lorg/jpos/iso/FactoryChannel;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOClientSocketFactory;

    .line 200
    .local v3, "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lorg/jpos/util/LogSource;

    if-eqz v4, :cond_0

    .line 201
    move-object v4, v3

    check-cast v4, Lorg/jpos/util/LogSource;

    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-static {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->access$100(Lorg/jpos/q2/iso/OneShotChannelAdaptor;)Lorg/jpos/util/Log;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v7}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".socket-factory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 204
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    check-cast v4, Lorg/jpos/iso/FactoryChannel;

    invoke-interface {v4, v3}, Lorg/jpos/iso/FactoryChannel;->setSocketFactory(Lorg/jpos/iso/ISOClientSocketFactory;)V

    .line 207
    .end local v3    # "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    :cond_1
    return-void

    .line 193
    .end local v2    # "socketFactoryString":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "channel element missing"

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public run()V
    .locals 9

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel-worker-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-static {v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->access$000(Lorg/jpos/q2/iso/OneShotChannelAdaptor;)Lorg/jpos/core/Configuration;

    move-result-object v0

    const-string v1, "handback-field"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->getInts(Ljava/lang/String;)[I

    move-result-object v0

    .line 152
    .local v0, "handbackFields":[I
    :goto_0
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->running()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    const-wide/16 v3, 0x3e8

    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget-object v1, v1, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    iget-object v6, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget-wide v6, v6, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->delay:J

    invoke-interface {v1, v5, v6, v7}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, Lorg/jpos/iso/ISOMsg;

    if-eqz v5, :cond_4

    .line 156
    move-object v5, v1

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    .line 157
    .local v5, "m":Lorg/jpos/iso/ISOMsg;
    const/4 v6, 0x0

    .line 158
    .local v6, "handBack":Lorg/jpos/iso/ISOMsg;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 159
    invoke-virtual {v5, v0}, Lorg/jpos/iso/ISOMsg;->clone([I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/iso/ISOMsg;

    move-object v6, v7

    .line 160
    :cond_0
    const/4 v7, 0x0

    .line 161
    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    .line 160
    invoke-interface {v8}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget v8, v8, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->maxConnectAttempts:I

    if-ge v7, v8, :cond_2

    .line 163
    iget-object v8, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v8}, Lorg/jpos/iso/ISOChannel;->reconnect()V

    .line 164
    iget-object v8, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v8}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 165
    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 161
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 167
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v7}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v7, v5}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 169
    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v7}, Lorg/jpos/iso/ISOChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v7

    move-object v5, v7

    .line 170
    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v7}, Lorg/jpos/iso/ISOChannel;->disconnect()V

    .line 171
    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v5, v6}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 173
    :cond_3
    iget-object v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget-object v7, v7, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v8, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    iget-object v8, v8, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v1    # "o":Ljava/lang/Object;
    .end local v5    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v6    # "handBack":Lorg/jpos/iso/ISOMsg;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_2
    goto :goto_4

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 180
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 176
    :catch_1
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 182
    :catch_2
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    goto/16 :goto_0

    .line 181
    :goto_5
    :try_start_4
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    goto :goto_6

    .line 182
    :catch_3
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    throw v1

    .line 187
    :cond_5
    return-void
.end method
