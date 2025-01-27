.class public final Lorg/javatuples/LabelValue;
.super Lorg/javatuples/Tuple;
.source "LabelValue.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValueLabel;
.implements Lorg/javatuples/valueintf/IValueValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/javatuples/Tuple;",
        "Lorg/javatuples/valueintf/IValueLabel<",
        "TA;>;",
        "Lorg/javatuples/valueintf/IValueValue<",
        "TB;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2

.field private static final serialVersionUID:J = 0x462902a8b42ce89aL


# instance fields
.field private final label:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    .local p1, "label":Ljava/lang/Object;, "TA;"
    .local p2, "value":Ljava/lang/Object;, "TB;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 150
    iput-object p1, p0, Lorg/javatuples/LabelValue;->label:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lorg/javatuples/LabelValue;->value:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/LabelValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/LabelValue<",
            "TX;TX;>;"
        }
    .end annotation

    .line 68
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 71
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Lorg/javatuples/LabelValue;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Lorg/javatuples/LabelValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 2 elements in order to create a LabelValue. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/LabelValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/LabelValue<",
            "TX;TX;>;"
        }
    .end annotation

    .line 79
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/LabelValue;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/LabelValue;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/LabelValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/LabelValue<",
            "TX;TX;>;"
        }
    .end annotation

    .line 85
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/LabelValue;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/LabelValue;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/LabelValue;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/LabelValue<",
            "TX;TX;>;"
        }
    .end annotation

    .line 91
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/LabelValue;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/LabelValue;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/LabelValue;
    .locals 7
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/LabelValue<",
            "TX;TX;>;"
        }
    .end annotation

    .line 98
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_8

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 105
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 107
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v4, 0x0

    .line 110
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    .line 116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 122
    :cond_2
    const/4 v0, 0x1

    .line 125
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 128
    :cond_3
    const/4 v0, 0x1

    .line 131
    :goto_3
    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_4

    .line 132
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Not enough elements for creating a LabelValue (2 needed)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p2, :cond_6

    goto :goto_5

    .line 136
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Iterable must have exactly 2 available elements in order to create a LabelValue."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_7
    :goto_5
    new-instance v5, Lorg/javatuples/LabelValue;

    invoke-direct {v5, v1, v2}, Lorg/javatuples/LabelValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 99
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v4    # "i":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/LabelValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lorg/javatuples/LabelValue<",
            "TA;TB;>;"
        }
    .end annotation

    .line 54
    .local p0, "label":Ljava/lang/Object;, "TA;"
    .local p1, "value":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/javatuples/LabelValue;

    invoke-direct {v0, p0, p1}, Lorg/javatuples/LabelValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    iget-object v0, p0, Lorg/javatuples/LabelValue;->label:Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 167
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    iget-object v0, p0, Lorg/javatuples/LabelValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setLabel(Ljava/lang/Object;)Lorg/javatuples/LabelValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/LabelValue<",
            "TX;TB;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    .local p1, "label":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/LabelValue;

    iget-object v1, p0, Lorg/javatuples/LabelValue;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/javatuples/LabelValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Lorg/javatuples/LabelValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(TY;)",
            "Lorg/javatuples/LabelValue<",
            "TA;TY;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/javatuples/LabelValue;, "Lorg/javatuples/LabelValue<TA;TB;>;"
    .local p1, "value":Ljava/lang/Object;, "TY;"
    new-instance v0, Lorg/javatuples/LabelValue;

    iget-object v1, p0, Lorg/javatuples/LabelValue;->label:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/javatuples/LabelValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
