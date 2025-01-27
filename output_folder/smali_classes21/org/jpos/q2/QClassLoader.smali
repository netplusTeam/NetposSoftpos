.class public Lorg/jpos/q2/QClassLoader;
.super Ljava/net/URLClassLoader;
.source "QClassLoader.java"

# interfaces
.implements Lorg/jpos/q2/QClassLoaderMBean;
.implements Ljava/io/FileFilter;


# instance fields
.field lastModified:J

.field libDir:Ljava/io/File;

.field loaderName:Ljavax/management/ObjectName;

.field server:Ljavax/management/MBeanServer;


# direct methods
.method public constructor <init>(Ljavax/management/MBeanServer;Ljava/io/File;Ljavax/management/ObjectName;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "libDir"    # Ljava/io/File;
    .param p3, "loaderName"    # Ljavax/management/ObjectName;
    .param p4, "mainClassLoader"    # Ljava/lang/ClassLoader;

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    invoke-direct {p0, v0, p4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 50
    iput-object p3, p0, Lorg/jpos/q2/QClassLoader;->loaderName:Ljavax/management/ObjectName;

    .line 51
    iput-object p2, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    .line 52
    iput-object p1, p0, Lorg/jpos/q2/QClassLoader;->server:Ljavax/management/MBeanServer;

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QClassLoader;->addURL(Ljava/net/URL;)V

    .line 57
    return-void
.end method

.method public forceNewClassLoaderOnNextScan()V
    .locals 2

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/QClassLoader;->lastModified:J

    .line 98
    return-void
.end method

.method public isModified()Z
    .locals 4

    .line 64
    iget-object v0, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/jpos/q2/QClassLoader;->lastModified:J

    iget-object v2, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$scan$0$org-jpos-q2-QClassLoader()Lorg/jpos/q2/QClassLoader;
    .locals 5

    .line 79
    new-instance v0, Lorg/jpos/q2/QClassLoader;

    iget-object v1, p0, Lorg/jpos/q2/QClassLoader;->server:Ljavax/management/MBeanServer;

    iget-object v2, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/q2/QClassLoader;->loaderName:Ljavax/management/ObjectName;

    invoke-virtual {p0}, Lorg/jpos/q2/QClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/q2/QClassLoader;-><init>(Ljavax/management/MBeanServer;Ljava/io/File;Ljavax/management/ObjectName;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public scan(Z)Lorg/jpos/q2/QClassLoader;
    .locals 6
    .param p1, "forceNewClassLoader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/NotCompliantMBeanException;,
            Ljavax/management/MBeanRegistrationException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/jpos/q2/QClassLoader;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    :cond_1
    return-object p0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/jpos/q2/QClassLoader;->server:Ljavax/management/MBeanServer;

    iget-object v1, p0, Lorg/jpos/q2/QClassLoader;->loaderName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lorg/jpos/q2/QClassLoader;->server:Ljavax/management/MBeanServer;

    iget-object v1, p0, Lorg/jpos/q2/QClassLoader;->loaderName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 78
    new-instance v0, Lorg/jpos/q2/QClassLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jpos/q2/QClassLoader$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/q2/QClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/QClassLoader;

    .local v0, "loader":Lorg/jpos/q2/QClassLoader;
    goto :goto_0

    .line 82
    .end local v0    # "loader":Lorg/jpos/q2/QClassLoader;
    :cond_3
    move-object v0, p0

    .line 84
    .restart local v0    # "loader":Lorg/jpos/q2/QClassLoader;
    :goto_0
    iget-object v1, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 85
    .local v1, "file":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 87
    .local v4, "aFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jpos/q2/QClassLoader;->addURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_2

    .line 88
    :catch_0
    move-exception v5

    .line 89
    .local v5, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 85
    .end local v4    # "aFile":Ljava/io/File;
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_4
    iget-object v2, p0, Lorg/jpos/q2/QClassLoader;->libDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/jpos/q2/QClassLoader;->lastModified:J

    .line 93
    iget-object v2, p0, Lorg/jpos/q2/QClassLoader;->server:Ljavax/management/MBeanServer;

    iget-object v3, p0, Lorg/jpos/q2/QClassLoader;->loaderName:Ljavax/management/ObjectName;

    invoke-interface {v2, v0, v3}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 94
    return-object v0
.end method
