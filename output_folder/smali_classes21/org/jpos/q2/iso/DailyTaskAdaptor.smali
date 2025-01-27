.class public Lorg/jpos/q2/iso/DailyTaskAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "DailyTaskAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field task:Ljava/lang/Runnable;

.field thisThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->thisThread:Ljava/lang/Thread;

    .line 43
    return-void
.end method


# virtual methods
.method public getWhen()Ljava/util/Date;
    .locals 12

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "start"

    invoke-interface {v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "hh":I
    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "mm":I
    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, "ss":I
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 83
    .local v4, "now":Ljava/util/Date;
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 85
    .local v5, "cal":Ljava/util/Calendar;
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 87
    const/16 v6, 0xc

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 88
    const/16 v6, 0xd

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 90
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 91
    .local v6, "when":Ljava/util/Date;
    invoke-virtual {v6, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v6, v7

    .line 94
    :cond_0
    return-object v6
.end method

.method protected initService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 47
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    .line 48
    .local v1, "e":Lorg/jdom2/Element;
    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->task:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 50
    return-void
.end method

.method public run()V
    .locals 3

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->waitUntilStartTime()V

    .line 68
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->task:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v0, "taskThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 73
    .end local v0    # "taskThread":Ljava/lang/Thread;
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method protected startService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->task:Ljava/lang/Runnable;

    instance-of v0, v0, Lorg/jpos/core/Configurable;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 54
    .local v0, "e":Lorg/jdom2/Element;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    .line 55
    .local v1, "factory":Lorg/jpos/q2/QFactory;
    iget-object v2, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->task:Ljava/lang/Runnable;

    check-cast v2, Lorg/jpos/core/Configurable;

    .line 56
    invoke-virtual {v1, v0}, Lorg/jpos/q2/QFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v3

    .line 55
    invoke-interface {v2, v3}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 59
    .end local v0    # "e":Lorg/jdom2/Element;
    .end local v1    # "factory":Lorg/jpos/q2/QFactory;
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->thisThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method protected stopService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jpos/q2/iso/DailyTaskAdaptor;->thisThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 64
    :cond_0
    return-void
.end method

.method protected waitUntilStartTime()V
    .locals 8

    .line 97
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getWhen()Ljava/util/Date;

    move-result-object v0

    .line 98
    .local v0, "when":Ljava/util/Date;
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->running()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 100
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 102
    .local v2, "sleepTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x3e8

    if-gtz v4, :cond_0

    .line 103
    invoke-static {v5, v6}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 104
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, v2, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " secs until "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    const-string v6, "sleeping"

    invoke-virtual {v4, v6, v5}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DailyTaskAdaptor;->getWhen()Ljava/util/Date;

    move-result-object v0

    .line 116
    .end local v1    # "now":Ljava/util/Date;
    .end local v2    # "sleepTime":J
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method
