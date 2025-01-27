.class public Lcom/sleepycat/je/statcap/StatManager$StatContext;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/statcap/StatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StatContext"
.end annotation


# instance fields
.field private base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private repbase:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/statcap/StatManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/statcap/StatManager;Ljava/util/Map;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/statcap/StatManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p2, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->this$0:Lcom/sleepycat/je/statcap/StatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->repbase:Ljava/util/Map;

    .line 159
    iput-object p2, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->base:Ljava/util/Map;

    .line 160
    return-void
.end method


# virtual methods
.method getBase()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->base:Ljava/util/Map;

    return-object v0
.end method

.method public getRepBase()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->repbase:Ljava/util/Map;

    return-object v0
.end method

.method setBase(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->base:Ljava/util/Map;

    .line 164
    return-void
.end method

.method public setRepBase(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager$StatContext;->repbase:Ljava/util/Map;

    .line 172
    return-void
.end method
