.class public Lorg/jpos/q2/QBeanSupport;
.super Ljava/lang/Object;
.source "QBeanSupport.java"

# interfaces
.implements Lorg/jpos/q2/QBean;
.implements Lorg/jpos/q2/QPersist;
.implements Lorg/jpos/q2/QBeanSupportMBean;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field protected cfg:Lorg/jpos/core/Configuration;

.field protected log:Lorg/jpos/util/Log;

.field modified:Z

.field final modifyLock:Ljava/lang/Object;

.field name:Ljava/lang/String;

.field persist:Lorg/jdom2/Element;

.field protected scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field server:Lorg/jpos/q2/Q2;

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/QBeanSupport;->modifyLock:Ljava/lang/Object;

    .line 57
    const-string v0, "Q2"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QBeanSupport;->setLogger(Ljava/lang/String;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    .line 59
    return-void
.end method


# virtual methods
.method protected addAttr(Lorg/jdom2/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "type"    # Ljava/lang/String;

    .line 296
    if-nez p3, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "attr"

    invoke-direct {v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "attr":Lorg/jdom2/Element;
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 299
    if-eqz p4, :cond_1

    .line 300
    const-string v2, "type"

    invoke-virtual {v1, v2, p4}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 301
    :cond_1
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 302
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 303
    return-void
.end method

.method protected varargs close([Ljava/io/Closeable;)V
    .locals 6
    .param p1, "closeables"    # [Ljava/io/Closeable;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 347
    .local v3, "c":Ljava/io/Closeable;
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    goto :goto_1

    .line 348
    :catch_0
    move-exception v4

    .line 349
    .local v4, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jpos/util/Log;->createWarn()Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 351
    :cond_0
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 345
    .end local v3    # "c":Ljava/io/Closeable;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_1
    if-eqz v0, :cond_2

    .line 355
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 356
    :cond_2
    return-void
.end method

.method protected createElement(Ljava/lang/String;Ljava/lang/Class;)Lorg/jdom2/Element;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mbeanClass"    # Ljava/lang/Class;

    .line 264
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "e":Lorg/jdom2/Element;
    iget-object v1, p0, Lorg/jpos/q2/QBeanSupport;->persist:Lorg/jdom2/Element;

    if-eqz v1, :cond_0

    .line 266
    const-string v2, "classpath"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "classPath":Lorg/jdom2/Element;
    :goto_0
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 269
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 270
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 272
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getLogger()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "loggerName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 274
    const-string v3, "logger"

    invoke-virtual {v0, v3, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 277
    :cond_3
    :try_start_0
    invoke-static {p2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v3

    .line 278
    .local v3, "info":Ljava/beans/BeanInfo;
    invoke-interface {v3}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v4

    .line 279
    .local v4, "desc":[Ljava/beans/PropertyDescriptor;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 280
    .local v8, "aDesc":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v8}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 281
    invoke-virtual {v8}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    .line 282
    .local v9, "read":Ljava/lang/reflect/Method;
    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v9, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 283
    .local v10, "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "type":Ljava/lang/String;
    const-string v12, "java.lang.String"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 285
    const/4 v11, 0x0

    .line 287
    :cond_4
    invoke-virtual {v8}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v12, v10, v11}, Lorg/jpos/q2/QBeanSupport;->addAttr(Lorg/jdom2/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v8    # "aDesc":Ljava/beans/PropertyDescriptor;
    .end local v9    # "read":Ljava/lang/reflect/Method;
    .end local v10    # "obj":Ljava/lang/Object;
    .end local v11    # "type":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 292
    .end local v3    # "info":Ljava/beans/BeanInfo;
    .end local v4    # "desc":[Ljava/beans/PropertyDescriptor;
    :cond_6
    goto :goto_2

    .line 290
    :catch_0
    move-exception v3

    .line 291
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    const-string v5, "get-persist"

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public destroy()V
    .locals 4

    .line 163
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 164
    return-void

    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->stop()V

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/QBeanSupport;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 173
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->destroyService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    const-string v3, "destroy"

    invoke-virtual {v2, v3, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iput v1, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    .line 179
    return-void
.end method

.method protected destroyService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    return-void
.end method

.method protected getAttrs()Ljava/util/Iterator;
    .locals 2

    .line 305
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getAttrs(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 309
    const-string v1, "attr"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method public getConfiguration()Lorg/jpos/core/Configuration;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->cfg:Lorg/jpos/core/Configuration;

    return-object v0
.end method

.method public getDump()Ljava/lang/String;
    .locals 4

    .line 244
    instance-of v0, p0, Lorg/jpos/util/Loggeable;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v1, "p":Ljava/io/PrintStream;
    move-object v2, p0

    check-cast v2, Lorg/jpos/util/Loggeable;

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 250
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "p":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jpos/q2/QFactory;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    return-object v0
.end method

.method public getLoader()Lorg/jpos/q2/QClassLoader;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->server:Lorg/jpos/q2/Q2;

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderURLS()[Ljava/net/URL;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->server:Lorg/jpos/q2/Q2;

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/QClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lorg/jpos/util/Log;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    return-object v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/util/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPersist()Lorg/jdom2/Element;
    .locals 1

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QBeanSupport;->setModified(Z)V

    .line 213
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->persist:Lorg/jdom2/Element;

    return-object v0
.end method

.method protected getProperties(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 323
    const-string v1, "property"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method protected getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "props"    # Ljava/util/Iterator;
    .param p2, "name"    # Ljava/lang/String;

    .line 335
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 337
    .local v0, "e":Lorg/jdom2/Element;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 340
    .end local v0    # "e":Lorg/jdom2/Element;
    :cond_0
    goto :goto_0

    .line 341
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jpos/util/Log;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected declared-synchronized getScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Lorg/jpos/util/ConcurrentUtil;->newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/QBeanSupport;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 260
    .end local p0    # "this":Lorg/jpos/q2/QBeanSupport;
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServer()Lorg/jpos/q2/Q2;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->server:Lorg/jpos/q2/Q2;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    return v0
.end method

.method public getStateAsString()Ljava/lang/String;
    .locals 2

    .line 198
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    if-ltz v0, :cond_0

    sget-object v0, Lorg/jpos/q2/QBeanSupport;->stateString:[Ljava/lang/String;

    iget v1, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 3

    .line 116
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QBeanSupport;->setModified(Z)V

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->initService()V

    .line 120
    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    const-string v2, "init"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method protected initService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    return-void
.end method

.method public isModified()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->modifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-boolean v1, p0, Lorg/jpos/q2/QBeanSupport;->modified:Z

    monitor-exit v0

    return v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public running()Z
    .locals 2

    .line 230
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "attrs"    # Ljava/util/Iterator;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 312
    if-nez p3, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 315
    .local v1, "e":Lorg/jdom2/Element;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 317
    goto :goto_1

    .line 319
    .end local v1    # "e":Lorg/jdom2/Element;
    :cond_1
    goto :goto_0

    .line 320
    :cond_2
    :goto_1
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lorg/jpos/q2/QBeanSupport;->cfg:Lorg/jpos/core/Configuration;

    .line 238
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QBeanSupport;->setModified(Z)V

    .line 87
    return-void
.end method

.method public setModified(Z)V
    .locals 2
    .param p1, "modified"    # Z

    .line 217
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->modifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iput-boolean p1, p0, Lorg/jpos/q2/QBeanSupport;->modified:Z

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lorg/jpos/q2/QBeanSupport;->name:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->setRealm(Ljava/lang/String;)V

    .line 80
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QBeanSupport;->setModified(Z)V

    .line 81
    return-void
.end method

.method public setPersist(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "persist"    # Lorg/jdom2/Element;

    .line 207
    iput-object p1, p0, Lorg/jpos/q2/QBeanSupport;->persist:Lorg/jdom2/Element;

    .line 208
    return-void
.end method

.method protected setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Iterator;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 326
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 328
    .local v0, "e":Lorg/jdom2/Element;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 330
    goto :goto_1

    .line 332
    .end local v0    # "e":Lorg/jdom2/Element;
    :cond_0
    goto :goto_0

    .line 333
    :cond_1
    :goto_1
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->setRealm(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setServer(Lorg/jpos/q2/Q2;)V
    .locals 0
    .param p1, "server"    # Lorg/jpos/q2/Q2;

    .line 63
    iput-object p1, p0, Lorg/jpos/q2/QBeanSupport;->server:Lorg/jpos/q2/Q2;

    .line 64
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 202
    iput p1, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    .line 203
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 129
    :try_start_0
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 132
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :try_start_2
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->startService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    nop

    .line 143
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    monitor-exit p0

    return-void

    .line 138
    .end local p0    # "this":Lorg/jpos/q2/QBeanSupport;
    :catchall_0
    move-exception v0

    .line 139
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    iput v2, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    .line 140
    iget-object v1, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 148
    :try_start_0
    iget v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 149
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    invoke-virtual {p0}, Lorg/jpos/q2/QBeanSupport;->stopService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    nop

    .line 158
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lorg/jpos/q2/QBeanSupport;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    monitor-exit p0

    return-void

    .line 153
    .end local p0    # "this":Lorg/jpos/q2/QBeanSupport;
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x4

    :try_start_4
    iput v1, p0, Lorg/jpos/q2/QBeanSupport;->state:I

    .line 155
    iget-object v1, p0, Lorg/jpos/q2/QBeanSupport;->log:Lorg/jpos/util/Log;

    const-string v2, "stop"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    return-void
.end method
