.class public Lcom/sleepycat/je/rep/impl/EnumConfigParam;
.super Lcom/sleepycat/je/config/ConfigParam;
.source "EnumConfigParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/sleepycat/je/config/ConfigParam;"
    }
.end annotation


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZLjava/lang/Class;)V
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p3, "mutable"    # Z
    .param p4, "forReplication"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "TT;>;ZZ",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/sleepycat/je/rep/impl/EnumConfigParam;, "Lcom/sleepycat/je/rep/impl/EnumConfigParam<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Enum;, "Ljava/lang/Enum<TT;>;"
    .local p5, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 32
    iput-object p5, p0, Lcom/sleepycat/je/rep/impl/EnumConfigParam;->enumClass:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method public getEnumerator(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/sleepycat/je/rep/impl/EnumConfigParam;, "Lcom/sleepycat/je/rep/impl/EnumConfigParam<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/EnumConfigParam;->enumClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public validateValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/sleepycat/je/rep/impl/EnumConfigParam;, "Lcom/sleepycat/je/rep/impl/EnumConfigParam<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/EnumConfigParam;->enumClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 58
    :cond_0
    return-void
.end method
