.class Lorg/jdom2/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "ContentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/jdom2/Content;",
        ">",
        "Ljava/util/AbstractList<",
        "TF;>;"
    }
.end annotation


# instance fields
.field backingpos:[I

.field backingsize:I

.field final filter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jdom2/ContentList;

.field xdata:I


# direct methods
.method constructor <init>(Lorg/jdom2/ContentList;Lorg/jdom2/filter/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter<",
            "TF;>;)V"
        }
    .end annotation

    .line 940
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    iput-object p1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 929
    invoke-static {p1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 930
    const/4 p1, 0x0

    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 932
    const/4 p1, -0x1

    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 941
    iput-object p2, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    .line 942
    return-void
.end method

.method static synthetic access$800(Lorg/jdom2/ContentList$FilterList;I)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/ContentList$FilterList;
    .param p1, "x1"    # I

    .line 923
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    return v0
.end method

.method private final fbinarySearch([IIILjava/util/Comparator;)I
    .locals 7
    .param p1, "indexes"    # [I
    .param p2, "len"    # I
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/Comparator<",
            "-TF;>;)I"
        }
    .end annotation

    .line 1235
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TF;>;"
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "mid":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "right":I
    const/4 v3, 0x0

    .line 1236
    .local v3, "cmp":I
    iget-object v4, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v4}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v4

    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v5, v5, p3

    aget-object v4, v4, v5

    .line 1237
    .local v4, "base":Lorg/jdom2/Content;, "TF;"
    :goto_0
    if-gt v0, v2, :cond_3

    .line 1238
    add-int v5, v0, v2

    ushr-int/lit8 v1, v5, 0x1

    .line 1239
    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v5}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v5

    aget v6, p1, v1

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1240
    if-nez v3, :cond_1

    .line 1241
    :goto_1
    if-nez v3, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v5}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    :cond_0
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 1246
    :cond_1
    if-gez v3, :cond_2

    .line 1247
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 1249
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_3
    return v0
.end method

.method private final resync(I)I
    .locals 4
    .param p1, "index"    # I

    .line 971
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    iget v0, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 976
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v0

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 977
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 981
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-ge p1, v0, :cond_1

    .line 984
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v0, v0, p1

    return v0

    .line 988
    :cond_1
    const/4 v0, 0x0

    .line 989
    .local v0, "bpi":I
    iget v1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-lez v1, :cond_2

    .line 990
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    add-int/lit8 v0, v1, 0x1

    .line 993
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 994
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 995
    .local v1, "gotit":Lorg/jdom2/Content;, "TF;"
    if-eqz v1, :cond_3

    .line 996
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    iget v3, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    aput v0, v2, v3

    .line 997
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-ne v3, p1, :cond_3

    .line 998
    return v0

    .line 1001
    :cond_3
    nop

    .end local v1    # "gotit":Lorg/jdom2/Content;, "TF;"
    add-int/lit8 v0, v0, 0x1

    .line 1002
    goto :goto_0

    .line 1003
    :cond_4
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 923
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/ContentList$FilterList;->add(ILorg/jdom2/Content;)V

    return-void
.end method

.method public add(ILorg/jdom2/Content;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "obj"    # Lorg/jdom2/Content;

    .line 1019
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const-string v0, " Size: "

    const-string v1, "Index: "

    if-ltz p1, :cond_4

    .line 1022
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v2

    .line 1023
    .local v2, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p2}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v0, v2, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 1032
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1033
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 1035
    :cond_2
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aput v2, v0, p1

    .line 1036
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1037
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1044
    return-void

    .line 1040
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter won\'t allow the "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' to be added to the list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    .end local v2    # "adj":I
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TF;>;)Z"
        }
    .end annotation

    .line 1049
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    if-eqz p2, :cond_c

    .line 1053
    const-string v0, " Size: "

    const-string v1, "Index: "

    if-ltz p1, :cond_b

    .line 1057
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v2

    .line 1058
    .local v2, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1062
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1063
    .local v0, "addcnt":I
    if-nez v0, :cond_2

    .line 1064
    const/4 v1, 0x0

    return v1

    .line 1067
    :cond_2
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 1069
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    .line 1070
    .local v1, "tmpmodcount":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v3

    .line 1071
    .local v3, "tmpdmc":I
    const/4 v4, 0x0

    .line 1073
    .local v4, "ok":Z
    const/4 v5, 0x0

    .line 1076
    .local v5, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Content;

    .line 1077
    .local v7, "c":Lorg/jdom2/Content;
    if-eqz v7, :cond_5

    .line 1081
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v9, v7}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1082
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v10, v2, v5

    invoke-virtual {v9, v10, v7}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 1088
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v9, v9

    iget-object v10, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v10}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v10

    if-gt v9, v10, :cond_3

    .line 1089
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v10, v9

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 1091
    :cond_3
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    add-int v10, p1, v5

    add-int v11, v2, v5

    aput v11, v9, v10

    .line 1092
    add-int v9, p1, v5

    add-int/2addr v9, v8

    iput v9, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1093
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v8

    iput v8, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1095
    add-int/lit8 v5, v5, 0x1

    .line 1102
    .end local v7    # "c":Lorg/jdom2/Content;
    goto :goto_1

    .line 1097
    .restart local v7    # "c":Lorg/jdom2/Content;
    :cond_4
    new-instance v8, Lorg/jdom2/IllegalAddException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filter won\'t allow the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' to be added to the list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    .end local v0    # "addcnt":I
    .end local v1    # "tmpmodcount":I
    .end local v2    # "adj":I
    .end local v3    # "tmpdmc":I
    .end local v4    # "ok":Z
    .end local v5    # "count":I
    .end local p1    # "index":I
    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    throw v8

    .line 1078
    .restart local v0    # "addcnt":I
    .restart local v1    # "tmpmodcount":I
    .restart local v2    # "adj":I
    .restart local v3    # "tmpdmc":I
    .restart local v4    # "ok":Z
    .restart local v5    # "count":I
    .restart local p1    # "index":I
    .restart local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    :cond_5
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Cannot add null content"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "addcnt":I
    .end local v1    # "tmpmodcount":I
    .end local v2    # "adj":I
    .end local v3    # "tmpdmc":I
    .end local v4    # "ok":Z
    .end local v5    # "count":I
    .end local p1    # "index":I
    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "c":Lorg/jdom2/Content;
    .restart local v0    # "addcnt":I
    .restart local v1    # "tmpmodcount":I
    .restart local v2    # "adj":I
    .restart local v3    # "tmpdmc":I
    .restart local v4    # "ok":Z
    .restart local v5    # "count":I
    .restart local p1    # "index":I
    .restart local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    :cond_6
    const/4 v4, 0x1

    .line 1105
    if-nez v4, :cond_8

    .line 1107
    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    .line 1108
    iget-object v6, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v7, v2, v5

    invoke-virtual {v6, v7}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_2

    .line 1111
    :cond_7
    iget-object v6, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v6, v1, v3}, Lorg/jdom2/ContentList;->access$600(Lorg/jdom2/ContentList;II)V

    .line 1114
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1115
    iput v1, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1119
    :cond_8
    return v8

    .line 1105
    :catchall_0
    move-exception v6

    if-nez v4, :cond_a

    .line 1107
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_9

    .line 1108
    iget-object v7, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v8, v2, v5

    invoke-virtual {v7, v8}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_3

    .line 1111
    :cond_9
    iget-object v7, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v7, v1, v3}, Lorg/jdom2/ContentList;->access$600(Lorg/jdom2/ContentList;II)V

    .line 1114
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1115
    iput v1, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    :cond_a
    throw v6

    .line 1054
    .end local v0    # "addcnt":I
    .end local v1    # "tmpmodcount":I
    .end local v2    # "adj":I
    .end local v3    # "tmpdmc":I
    .end local v4    # "ok":Z
    .end local v5    # "count":I
    :cond_b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1050
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot add a null collection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 923
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Content;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation

    .line 1131
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const-string v0, " Size: "

    const-string v1, "Index: "

    if-ltz p1, :cond_1

    .line 1134
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v2

    .line 1135
    .local v2, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1138
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v2}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    return-object v0

    .line 1136
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1132
    .end local v2    # "adj":I
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isEmpty()Z
    .locals 3

    .line 957
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 1143
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TF;>;"
        }
    .end annotation

    .line 1148
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TF;>;"
        }
    .end annotation

    .line 1153
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {v0, v1, p0, p1}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 923
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Content;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation

    .line 1165
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const-string v0, " Size: "

    const-string v1, "Index: "

    if-ltz p1, :cond_1

    .line 1168
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v2

    .line 1169
    .local v2, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1172
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v0, v2}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 1174
    .local v0, "oldc":Lorg/jdom2/Content;
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1175
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1177
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v1, v0}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    return-object v1

    .line 1170
    .end local v0    # "oldc":Lorg/jdom2/Content;
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1166
    .end local v2    # "adj":I
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 923
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    move-object v0, p2

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/ContentList$FilterList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Content;)Lorg/jdom2/Content;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITF;)TF;"
        }
    .end annotation

    .line 1192
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "obj":Lorg/jdom2/Content;, "TF;"
    const-string v0, " Size: "

    const-string v1, "Index: "

    if-ltz p1, :cond_2

    .line 1195
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v2

    .line 1196
    .local v2, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1199
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p2}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 1200
    .local v0, "ins":Lorg/jdom2/Content;, "TF;"
    if-eqz v0, :cond_0

    .line 1201
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2, v0}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 1203
    .local v1, "oldc":Lorg/jdom2/Content;, "TF;"
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v3

    iput v3, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1204
    return-object v1

    .line 1206
    .end local v1    # "oldc":Lorg/jdom2/Content;, "TF;"
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter won\'t allow index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    .end local v0    # "ins":Lorg/jdom2/Content;, "TF;"
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1193
    .end local v2    # "adj":I
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public size()I
    .locals 1

    .line 1218
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    .line 1219
    iget v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    return v0
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TF;>;)V"
        }
    .end annotation

    .line 1265
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TF;>;"
    if-nez p1, :cond_0

    .line 1269
    return-void

    .line 1271
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v0

    .line 1272
    .local v0, "sz":I
    new-array v1, v0, [I

    .line 1273
    .local v1, "indexes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1274
    invoke-direct {p0, v1, v2, v2, p1}, Lorg/jdom2/ContentList$FilterList;->fbinarySearch([IIILjava/util/Comparator;)I

    move-result v3

    .line 1275
    .local v3, "ip":I
    if-ge v3, v2, :cond_1

    .line 1276
    add-int/lit8 v4, v3, 0x1

    sub-int v5, v2, v3

    invoke-static {v1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1278
    :cond_1
    iget-object v4, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v4, v4, v2

    aput v4, v1, v3

    .line 1273
    .end local v3    # "ip":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1280
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2, v1}, Lorg/jdom2/ContentList;->access$700(Lorg/jdom2/ContentList;[I)V

    .line 1281
    return-void
.end method
