.class public Lorg/jpos/q2/cli/CALCLUHN;
.super Ljava/lang/Object;
.source "CALCLUHN.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 7
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 29
    new-array v0, v3, [Ljava/lang/Object;

    aget-object v1, p2, v2

    aput-object v1, v0, v2

    const-string v1, "Usage: %span(s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 30
    return-void

    .line 32
    :cond_0
    new-instance v0, Lorg/jpos/core/DefaultLUHNCalculator;

    invoke-direct {v0}, Lorg/jpos/core/DefaultLUHNCalculator;-><init>()V

    .line 33
    .local v0, "calc":Lorg/jpos/core/DefaultLUHNCalculator;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 34
    new-array v5, v1, [Ljava/lang/Object;

    aget-object v6, p2, v4

    aput-object v6, v5, v2

    aget-object v6, p2, v4

    invoke-virtual {v0, v6}, Lorg/jpos/core/DefaultLUHNCalculator;->calculate(Ljava/lang/String;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s%c"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v4    # "i":I
    :cond_1
    return-void
.end method
