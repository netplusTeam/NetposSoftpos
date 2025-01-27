.class public Lbsh/classpath/BshClassLoader;
.super Ljava/net/URLClassLoader;
.source "BshClassLoader.java"


# instance fields
.field classManager:Lbsh/BshClassManager;


# direct methods
.method protected constructor <init>(Lbsh/BshClassManager;)V
    .locals 1
    .param p1, "classManager"    # Lbsh/BshClassManager;

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Lbsh/classpath/BshClassPath;)V
    .locals 1
    .param p1, "classManager"    # Lbsh/BshClassManager;
    .param p2, "bcp"    # Lbsh/classpath/BshClassPath;

    .line 56
    invoke-virtual {p2}, Lbsh/classpath/BshClassPath;->getPathComponents()[Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;[Ljava/net/URL;)V
    .locals 0
    .param p1, "classManager"    # Lbsh/BshClassManager;
    .param p2, "bases"    # [Ljava/net/URL;

    .line 48
    invoke-direct {p0, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    .line 49
    iput-object p1, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

    .line 50
    return-void
.end method


# virtual methods
.method public addURL(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 69
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    .line 70
    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    check-cast v0, Lbsh/classpath/ClassManagerImpl;

    .line 137
    .local v0, "bcm":Lbsh/classpath/ClassManagerImpl;
    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 142
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Designated loader could not find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 153
    :try_start_1
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 154
    :catch_1
    move-exception v2

    .line 161
    :cond_1
    invoke-virtual {v0}, Lbsh/classpath/ClassManagerImpl;->getBaseLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_2

    .line 165
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 166
    :catch_2
    move-exception v2

    .line 169
    :cond_2
    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method getClassManager()Lbsh/BshClassManager;
    .locals 1

    .line 186
    iget-object v0, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .line 89
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    return-object v0

    .line 95
    :cond_0
    const-string v1, "bsh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :try_start_0
    const-class v1, Lbsh/Interpreter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    .line 105
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 106
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    .line 108
    :goto_1
    if-eqz v0, :cond_3

    .line 111
    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 114
    :cond_2
    return-object v0

    .line 109
    :cond_3
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, "here in loaClass"

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
