.class public Lorg/jpos/q2/iso/MUXPool;
.super Lorg/jpos/q2/QBeanSupport;
.source "MUXPool.java"

# interfaces
.implements Lorg/jpos/iso/MUX;
.implements Lorg/jpos/q2/iso/MUXPoolMBean;


# static fields
.field public static final PRIMARY_SECONDARY:I = 0x0

.field public static final ROUND_ROBIN:I = 0x1

.field public static final ROUND_ROBIN_WITH_OVERRIDE:I = 0x2

.field public static final SPLIT_BY_DIVISOR:I = 0x3


# instance fields
.field checkEnabled:Z

.field msgno:Ljava/util/concurrent/atomic/AtomicInteger;

.field mux:[Lorg/jpos/iso/MUX;

.field muxName:[Ljava/lang/String;

.field originalChannelField:Ljava/lang/String;

.field overrideMTIs:[Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field splitField:Ljava/lang/String;

.field strategy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/q2/iso/MUXPool;->strategy:I

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->msgno:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->originalChannelField:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    return-void
.end method

.method private getMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "maxWait"    # J

    .line 208
    iget v0, p0, Lorg/jpos/q2/iso/MUXPool;->strategy:I

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-virtual {p0, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->firstAvailableMUX(J)Lorg/jpos/iso/MUX;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->splitByDivisorMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->nextAvailableWithOverrideMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->msgno:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->nextAvailableMUX(IJ)Lorg/jpos/iso/MUX;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStrategy(Ljava/lang/String;)I
    .locals 2
    .param p1, "stg"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 195
    return v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 198
    const-string v1, "round-robin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_1
    const-string v1, "round-robin-with-override"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const/4 v0, 0x2

    return v0

    .line 202
    :cond_2
    const-string v1, "split-by-divisor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    const/4 v0, 0x3

    return v0

    .line 205
    :cond_3
    return v0
.end method

.method private grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;
    .locals 2
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 230
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v1

    return-object v1
.end method

.method private isUsable(Lorg/jpos/iso/MUX;)Z
    .locals 8
    .param p1, "mux"    # Lorg/jpos/iso/MUX;

    .line 235
    iget-boolean v0, p0, Lorg/jpos/q2/iso/MUXPool;->checkEnabled:Z

    if-eqz v0, :cond_4

    instance-of v0, p1, Lorg/jpos/q2/iso/QMUX;

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jpos/q2/iso/QMUX;

    .line 239
    .local v0, "qmux":Lorg/jpos/q2/iso/QMUX;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jpos/q2/iso/QMUX;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "enabledKey":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jpos/q2/iso/QMUX;->getReadyIndicatorNames()[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "readyNames":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    array-length v5, v2

    if-ne v5, v4, :cond_2

    .line 243
    invoke-interface {p1}, Lorg/jpos/iso/MUX;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/jpos/q2/iso/MUXPool;->sp:Lorg/jpos/space/Space;

    invoke-interface {v5, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/MUXPool;->sp:Lorg/jpos/space/Space;

    aget-object v7, v2, v3

    invoke-interface {v6, v7}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    move v3, v4

    :cond_1
    return v3

    .line 245
    :cond_2
    invoke-interface {p1}, Lorg/jpos/iso/MUX;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/jpos/q2/iso/MUXPool;->sp:Lorg/jpos/space/Space;

    invoke-interface {v5, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 236
    .end local v0    # "qmux":Lorg/jpos/q2/iso/QMUX;
    .end local v1    # "enabledKey":Ljava/lang/String;
    .end local v2    # "readyNames":[Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/jpos/iso/MUX;->isConnected()Z

    move-result v0

    return v0
.end method

.method private nextAvailableWithOverrideMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "maxWait"    # J

    .line 160
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->originalChannelField:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->originalChannelField:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "channelName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/q2/iso/MUXPool;->overrideMTI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 164
    .local v0, "channel":Lorg/jpos/q2/iso/ChannelAdaptor;
    iget-object v2, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 165
    .local v5, "mx":Lorg/jpos/iso/MUX;
    if-eqz v0, :cond_0

    move-object v6, v5

    check-cast v6, Lorg/jpos/q2/iso/QMUX;

    invoke-virtual {v6}, Lorg/jpos/q2/iso/QMUX;->getInQueue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getOutQueue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    invoke-direct {p0, v5}, Lorg/jpos/q2/iso/MUXPool;->isUsable(Lorg/jpos/iso/MUX;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    return-object v5

    .line 164
    .end local v5    # "mx":Lorg/jpos/iso/MUX;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "channel":Lorg/jpos/q2/iso/ChannelAdaptor;
    .end local v1    # "channelName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->msgno:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->nextAvailableMUX(IJ)Lorg/jpos/iso/MUX;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MUXPool;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private overrideMTI(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mtiReq"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->overrideMTIs:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 151
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 152
    .local v4, "mti":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const/4 v0, 0x1

    return v0

    .line 151
    .end local v4    # "mti":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    return v1
.end method

.method private splitByDivisorMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "maxWait"    # J

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v3, v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget-object v0, v0, v1

    .line 183
    .local v0, "mx":Lorg/jpos/iso/MUX;
    invoke-direct {p0, v0}, Lorg/jpos/q2/iso/MUXPool;->isUsable(Lorg/jpos/iso/MUX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    return-object v0

    .line 187
    .end local v0    # "mx":Lorg/jpos/iso/MUX;
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->msgno:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/jpos/q2/iso/MUXPool;->nextAvailableMUX(IJ)Lorg/jpos/iso/MUX;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MUXPool;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private toStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ss":[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected firstAvailableMUX(J)Lorg/jpos/iso/MUX;
    .locals 5
    .param p1, "maxWait"    # J

    .line 100
    :goto_0
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 101
    .local v3, "m":Lorg/jpos/iso/MUX;
    invoke-direct {p0, v3}, Lorg/jpos/q2/iso/MUXPool;->isUsable(Lorg/jpos/iso/MUX;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    return-object v3

    .line 100
    .end local v3    # "m":Lorg/jpos/iso/MUX;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_2
    goto :goto_0
.end method

.method public getMuxNames()[Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->muxName:[Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/jpos/q2/iso/MUXPool;->strategy:I

    return v0
.end method

.method public initService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MUXPool;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 53
    .local v0, "e":Lorg/jdom2/Element;
    const-string v1, "muxes"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/MUXPool;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->muxName:[Ljava/lang/String;

    .line 54
    const-string v1, "strategy"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/MUXPool;->getStrategy(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/jpos/q2/iso/MUXPool;->strategy:I

    .line 55
    const-string v1, "follower-override"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/MUXPool;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->overrideMTIs:[Ljava/lang/String;

    .line 56
    const-string v1, "original-channel-field"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->originalChannelField:Ljava/lang/String;

    .line 57
    const-string v1, "split-field"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->splitField:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "check-enabled"

    invoke-interface {v1, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jpos/q2/iso/MUXPool;->checkEnabled:Z

    .line 59
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/MUXPool;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->sp:Lorg/jpos/space/Space;

    .line 60
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->muxName:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lorg/jpos/iso/MUX;

    iput-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 63
    iget-object v3, p0, Lorg/jpos/q2/iso/MUXPool;->muxName:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/jpos/q2/iso/QMUX;->getMUX(Ljava/lang/String;)Lorg/jpos/iso/MUX;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    nop

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mux."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/iso/MUXPool;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v2, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isConnected()Z
    .locals 6

    .line 93
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 94
    .local v4, "m":Lorg/jpos/iso/MUX;
    invoke-direct {p0, v4}, Lorg/jpos/q2/iso/MUXPool;->isUsable(Lorg/jpos/iso/MUX;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 93
    .end local v4    # "m":Lorg/jpos/iso/MUX;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return v2
.end method

.method protected nextAvailableMUX(IJ)Lorg/jpos/iso/MUX;
    .locals 4
    .param p1, "mnumber"    # I
    .param p2, "maxWait"    # J

    .line 109
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 110
    add-int v2, p1, v0

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 111
    .local v2, "j":I
    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/MUXPool;->isUsable(Lorg/jpos/iso/MUX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->mux:[Lorg/jpos/iso/MUX;

    aget-object v1, v1, v2

    return-object v1

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool;->msgno:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_2

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_2
    goto :goto_0
.end method

.method public request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 74
    .local v0, "maxWait":J
    invoke-direct {p0, p1, v0, v1}, Lorg/jpos/q2/iso/MUXPool;->getMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;

    move-result-object v2

    .line 76
    .local v2, "mux":Lorg/jpos/iso/MUX;
    if-eqz v2, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long p2, v0, v3

    .line 78
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_0

    .line 79
    invoke-interface {v2, p1, p2, p3}, Lorg/jpos/iso/MUX;->request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;

    move-result-object v3

    return-object v3

    .line 81
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .locals 9
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .param p4, "r"    # Lorg/jpos/iso/ISOResponseListener;
    .param p5, "handBack"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 133
    .local v0, "maxWait":J
    invoke-direct {p0, p1, v0, v1}, Lorg/jpos/q2/iso/MUXPool;->getMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;

    move-result-object v8

    .line 135
    .local v8, "mux":Lorg/jpos/iso/MUX;
    if-eqz v8, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p2, v0, v2

    .line 137
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 138
    move-object v2, v8

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/jpos/iso/MUX;->request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v2, Lorg/jpos/q2/iso/MUXPool$1;

    invoke-direct {v2, p0, p4, p5}, Lorg/jpos/q2/iso/MUXPool$1;-><init>(Lorg/jpos/q2/iso/MUXPool;Lorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v2}, Lorg/jpos/q2/iso/MUXPool$1;->start()V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "No MUX available"

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-wide/16 v0, 0x3e8

    .line 85
    .local v0, "maxWait":J
    invoke-direct {p0, p1, v0, v1}, Lorg/jpos/q2/iso/MUXPool;->getMUX(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/MUX;

    move-result-object v2

    .line 87
    .local v2, "mux":Lorg/jpos/iso/MUX;
    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, p1}, Lorg/jpos/iso/MUX;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 91
    return-void

    .line 88
    :cond_0
    new-instance v3, Lorg/jpos/iso/ISOException;

    const-string v4, "No available MUX"

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public stopService()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mux."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/MUXPool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 71
    return-void
.end method
