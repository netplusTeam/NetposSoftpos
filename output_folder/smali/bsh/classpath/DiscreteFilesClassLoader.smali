.class public Lbsh/classpath/DiscreteFilesClassLoader;
.super Lbsh/classpath/BshClassLoader;
.source "DiscreteFilesClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;
    }
.end annotation


# instance fields
.field map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;


# direct methods
.method public constructor <init>(Lbsh/BshClassManager;Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;)V
    .locals 0
    .param p1, "classManager"    # Lbsh/BshClassManager;
    .param p2, "map"    # Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    .line 64
    invoke-direct {p0, p1}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;)V

    .line 65
    iput-object p2, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    .line 66
    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-virtual {v0, p1}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->get(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v0

    .line 75
    .local v0, "source":Lbsh/classpath/BshClassPath$ClassSource;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath$ClassSource;->getCode(Ljava/lang/String;)[B

    move-result-object v1

    .line 78
    .local v1, "code":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Lbsh/classpath/DiscreteFilesClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "code":[B
    :cond_0
    invoke-super {p0, p1}, Lbsh/classpath/BshClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "for files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
