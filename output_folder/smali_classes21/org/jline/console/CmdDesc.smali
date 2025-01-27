.class public Lorg/jline/console/CmdDesc;
.super Ljava/lang/Object;
.source "CmdDesc.java"


# instance fields
.field private argsDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;"
        }
    .end annotation
.end field

.field private command:Z

.field private errorIndex:I

.field private errorPattern:Ljava/util/regex/Pattern;

.field private highlighted:Z

.field private mainDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field private optsDesc:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;>;"
        }
    .end annotation
.end field

.field private subcommand:Z

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/console/CmdDesc;->errorIndex:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->valid:Z

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->command:Z

    .line 24
    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->subcommand:Z

    .line 25
    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->highlighted:Z

    .line 28
    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->command:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "argsDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/jline/console/CmdDesc;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    .local p1, "mainDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local p2, "argsDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    .local p3, "optsDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/console/CmdDesc;->errorIndex:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->valid:Z

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->command:Z

    .line 24
    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->subcommand:Z

    .line 25
    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->highlighted:Z

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jline/console/CmdDesc;->argsDesc:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "main"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/jline/console/CmdDesc;->mainDesc:Ljava/util/List;

    .line 48
    iget-object v2, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jline/console/CmdDesc;->mainDesc:Ljava/util/List;

    .line 52
    :goto_0
    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->command:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    .local p1, "argsDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    .local p2, "optsDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/jline/console/CmdDesc;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "valid"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/console/CmdDesc;->errorIndex:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->valid:Z

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->command:Z

    .line 24
    iput-boolean v1, p0, Lorg/jline/console/CmdDesc;->subcommand:Z

    .line 25
    iput-boolean v0, p0, Lorg/jline/console/CmdDesc;->highlighted:Z

    .line 32
    iput-boolean p1, p0, Lorg/jline/console/CmdDesc;->valid:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getArgsDesc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->argsDesc:Ljava/util/List;

    return-object v0
.end method

.method public getErrorIndex()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/jline/console/CmdDesc;->errorIndex:I

    return v0
.end method

.method public getErrorPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->errorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getMainDesc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->mainDesc:Ljava/util/List;

    return-object v0
.end method

.method public getOptsDesc()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    return-object v0
.end method

.method public isCommand()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/jline/console/CmdDesc;->command:Z

    return v0
.end method

.method public isHighlighted()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/jline/console/CmdDesc;->highlighted:Z

    return v0
.end method

.method public isSubcommand()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/jline/console/CmdDesc;->subcommand:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/jline/console/CmdDesc;->valid:Z

    return v0
.end method

.method public mainDesc(Ljava/util/List;)Lorg/jline/console/CmdDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)",
            "Lorg/jline/console/CmdDesc;"
        }
    .end annotation

    .line 80
    .local p1, "mainDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/console/CmdDesc;->mainDesc:Ljava/util/List;

    .line 81
    return-object p0
.end method

.method public optionDescription(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method

.method public optionWithValue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lorg/jline/console/CmdDesc;->optsDesc:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(^|.*\\s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "($|=.*|\\s.*)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 121
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setErrorIndex(I)V
    .locals 0
    .param p1, "errorIndex"    # I

    .line 105
    iput p1, p0, Lorg/jline/console/CmdDesc;->errorIndex:I

    .line 106
    return-void
.end method

.method public setErrorPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "errorPattern"    # Ljava/util/regex/Pattern;

    .line 97
    iput-object p1, p0, Lorg/jline/console/CmdDesc;->errorPattern:Ljava/util/regex/Pattern;

    .line 98
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 0
    .param p1, "highlighted"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/jline/console/CmdDesc;->highlighted:Z

    .line 73
    return-void
.end method

.method public setMainDesc(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "mainDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/console/CmdDesc;->mainDesc:Ljava/util/List;

    .line 86
    return-void
.end method

.method public setSubcommand(Z)V
    .locals 0
    .param p1, "subcommand"    # Z

    .line 64
    iput-boolean p1, p0, Lorg/jline/console/CmdDesc;->subcommand:Z

    .line 65
    return-void
.end method
