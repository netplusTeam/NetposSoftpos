.class public Lbsh/util/NameCompletionTable;
.super Ljava/util/ArrayList;
.source "NameCompletionTable.java"

# interfaces
.implements Lbsh/util/NameCompletion;


# instance fields
.field sources:Ljava/util/List;

.field table:Lbsh/util/NameCompletionTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lbsh/NameSource;)V
    .locals 1
    .param p1, "source"    # Lbsh/NameSource;

    .line 74
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public add(Lbsh/util/NameCompletionTable;)V
    .locals 2
    .param p1, "table"    # Lbsh/util/NameCompletionTable;

    .line 58
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented usage error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public completeName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "part"    # Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "found":Ljava/util/List;
    invoke-virtual {p0, p1, v0}, Lbsh/util/NameCompletionTable;->getMatchingNames(Ljava/lang/String;Ljava/util/List;)V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 117
    new-array v1, v2, [Ljava/lang/String;

    return-object v1

    .line 120
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "maxCommon":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    nop

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    invoke-static {v1, v4}, Lbsh/StringUtil;->maxCommonPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    goto :goto_1

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 132
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    return-object v3

    .line 134
    :cond_3
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected getMatchingNames(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "found"    # Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lbsh/util/NameCompletionTable;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lbsh/util/NameCompletionTable;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, p1, p2}, Lbsh/util/NameCompletionTable;->getMatchingNames(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 100
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 102
    iget-object v1, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/NameSource;

    .line 103
    .local v1, "src":Lbsh/NameSource;
    invoke-interface {v1}, Lbsh/NameSource;->getAllNames()[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 105
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    aget-object v4, v2, v3

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 100
    .end local v1    # "src":Lbsh/NameSource;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "i":I
    :cond_5
    return-void
.end method
