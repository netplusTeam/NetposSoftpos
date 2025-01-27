.class public abstract Lbsh/ReflectManager;
.super Ljava/lang/Object;
.source "ReflectManager.java"


# static fields
.field private static rfm:Lbsh/ReflectManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RMSetAccessible(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    .line 72
    invoke-static {}, Lbsh/ReflectManager;->getReflectManager()Lbsh/ReflectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsh/ReflectManager;->setAccessible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getReflectManager()Lbsh/ReflectManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    .line 50
    sget-object v0, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "clas":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/ReflectManager;

    sput-object v1, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    .end local v0    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reflect Manager unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;

    return-object v0
.end method


# virtual methods
.method public abstract setAccessible(Ljava/lang/Object;)Z
.end method
