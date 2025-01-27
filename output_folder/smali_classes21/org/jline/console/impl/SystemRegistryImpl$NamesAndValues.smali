.class Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamesAndValues"
.end annotation


# instance fields
.field private final delims:[Ljava/lang/String;

.field private fileNames:Ljava/nio/file/Path;

.field private namedPipes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/console/impl/SystemRegistryImpl;


# direct methods
.method public constructor <init>(Lorg/jline/console/impl/SystemRegistryImpl;)V
    .locals 1

    .line 1715
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;-><init>(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/builtins/ConfigurationPath;)V

    .line 1716
    return-void
.end method

.method public constructor <init>(Lorg/jline/console/impl/SystemRegistryImpl;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 22
    .param p2, "configPath"    # Lorg/jline/builtins/ConfigurationPath;

    .line 1719
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p1

    iput-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1707
    const-string v3, "&"

    const-string v4, "\\|"

    const-string v5, "\\{"

    const-string v6, "\\}"

    const-string v7, "\\["

    const-string v8, "\\]"

    const-string v9, "\\("

    const-string v10, "\\)"

    const-string v11, "\\+"

    const-string v12, "-"

    const-string v13, "\\*"

    const-string v14, "="

    const-string v15, ">"

    const-string v16, "<"

    const-string v17, "~"

    const-string v18, "!"

    const-string v19, ":"

    const-string v20, ","

    const-string v21, ";"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->delims:[Ljava/lang/String;

    .line 1711
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    .line 1720
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "fields"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "values"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "quoted"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "options"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    invoke-virtual/range {p1 .. p1}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v3

    .line 1725
    .local v3, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1727
    :try_start_0
    const-string v0, "pipeline-names.json"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fileNames:Ljava/nio/file/Path;

    .line 1728
    invoke-interface {v3, v0}, Lorg/jline/console/ConsoleEngine;->slurp(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1729
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1730
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, v1, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 1734
    .end local v0    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_1

    .line 1732
    :catch_0
    move-exception v0

    .line 1736
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Set;

    .line 1706
    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    .line 1706
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fieldsAndValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1873
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1874
    return-void

    .line 1876
    :cond_0
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1877
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1878
    return-void
.end method

.method private addFields(Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 1857
    const-string v0, "fields"

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    return-void
.end method

.method private addOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 1869
    const-string v0, "options"

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    return-void
.end method

.method private addQuoted(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 1865
    const-string v0, "quoted"

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method private addValues(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 1861
    const-string v0, "values"

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    return-void
.end method

.method private fieldsAndValues()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1904
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1905
    .local v0, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1906
    invoke-virtual {p0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1907
    return-object v0
.end method

.method private isPipe(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1754
    .local p2, "pipes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-static {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->access$300(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isQuoted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .line 1840
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1841
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1842
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1840
    :goto_0
    return v1
.end method

.method private truncate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "maxSize"    # I

    .line 1911
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 1912
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    :cond_0
    return-void
.end method


# virtual methods
.method public encloseBy(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .line 1829
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1830
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1831
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1833
    .local v0, "quoted":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 1834
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v1, v3

    move v0, v1

    .line 1836
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    return-object v1
.end method

.method public extractNames(Ljava/lang/String;)V
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    .line 1758
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-static {v2}, Lorg/jline/console/impl/SystemRegistryImpl;->access$400(Lorg/jline/console/impl/SystemRegistryImpl;)Lorg/jline/reader/Parser;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1759
    return-void

    .line 1761
    :cond_0
    new-instance v2, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;

    iget-object v3, v0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-static {v3}, Lorg/jline/console/impl/SystemRegistryImpl;->access$400(Lorg/jline/console/impl/SystemRegistryImpl;)Lorg/jline/reader/Parser;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;-><init>(Lorg/jline/reader/Parser;)V

    .line 1762
    .local v2, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    invoke-virtual {v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v2}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v3

    .line 1764
    .local v3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1765
    .local v4, "pipeId":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1766
    .local v6, "a":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1767
    goto :goto_1

    .line 1769
    :cond_1
    nop

    .end local v6    # "a":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 1770
    goto :goto_0

    .line 1771
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 1772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    .line 1774
    .local v6, "redirectPipe":I
    add-int/lit8 v7, v4, 0x1

    .local v7, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, " "

    const-string v10, "\\d+"

    if-ge v7, v8, :cond_b

    .line 1775
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1776
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1777
    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    add-int/lit8 v10, v7, -0x1

    if-eq v6, v10, :cond_a

    .line 1778
    const-string v10, ">"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, ">>"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    .line 1780
    :cond_3
    const-string v10, "\\w+(\\(\\))?"

    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1781
    invoke-direct {v0, v8}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addValues(Ljava/lang/String;)V

    goto :goto_5

    .line 1782
    :cond_4
    const-string v10, "--\\w+(=.*|)$"

    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_8

    .line 1783
    const/16 v10, 0x3d

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1784
    .local v10, "idx":I
    const/4 v12, 0x2

    if-lez v10, :cond_6

    .line 1785
    if-le v10, v11, :cond_5

    .line 1786
    invoke-virtual {v8, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addOptions(Ljava/lang/String;)V

    .line 1788
    :cond_5
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1790
    :cond_6
    const/4 v9, -0x1

    if-ne v10, v9, :cond_7

    .line 1791
    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addOptions(Ljava/lang/String;)V

    .line 1793
    .end local v10    # "idx":I
    :cond_7
    :goto_3
    goto :goto_5

    .line 1794
    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1779
    :cond_9
    :goto_4
    move v6, v7

    goto :goto_5

    .line 1798
    :cond_a
    const/4 v6, -0x1

    .line 1774
    .end local v8    # "arg":Ljava/lang/String;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1801
    .end local v7    # "i":I
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 1802
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1803
    .local v7, "rest":Ljava/lang/String;
    iget-object v8, v0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->delims:[Ljava/lang/String;

    array-length v11, v8

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v11, :cond_c

    aget-object v14, v8, v13

    .line 1804
    .local v14, "d":Ljava/lang/String;
    invoke-virtual {v7, v14, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1803
    .end local v14    # "d":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1806
    :cond_c
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1807
    .local v8, "words":[Ljava/lang/String;
    array-length v9, v8

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v9, :cond_14

    aget-object v13, v8, v11

    .line 1808
    .local v13, "w":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_12

    invoke-virtual {v13, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1809
    move-object/from16 v16, v2

    goto :goto_9

    .line 1811
    :cond_d
    invoke-direct {v0, v13}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isQuoted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1812
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addQuoted(Ljava/lang/String;)V

    move-object/from16 v16, v2

    goto :goto_9

    .line 1813
    :cond_e
    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "\\w+"

    if-eqz v14, :cond_11

    .line 1814
    const-string v14, "\\."

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v12, v14

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v12, :cond_10

    move-object/from16 v16, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .local v16, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    aget-object v2, v14, v1

    .line 1815
    .local v2, "f":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v2, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1816
    invoke-direct {v0, v2}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addFields(Ljava/lang/String;)V

    .line 1814
    .end local v2    # "f":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    goto :goto_8

    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .local v2, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_10
    move-object/from16 v16, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    goto :goto_9

    .line 1819
    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_11
    move-object/from16 v16, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    invoke-virtual {v13, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1820
    invoke-direct {v0, v13}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->addValues(Ljava/lang/String;)V

    goto :goto_9

    .line 1808
    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_12
    move-object/from16 v16, v2

    .line 1807
    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v13    # "w":Ljava/lang/String;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_13
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_7

    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_14
    move-object/from16 v16, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    goto :goto_a

    .line 1801
    .end local v7    # "rest":Ljava/lang/String;
    .end local v8    # "words":[Ljava/lang/String;
    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_15
    move-object/from16 v16, v2

    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    goto :goto_a

    .line 1771
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "redirectPipe":I
    .end local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :cond_16
    move-object/from16 v16, v2

    .line 1825
    .end local v2    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .restart local v16    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    :goto_a
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes:Ljava/util/List;

    .line 1826
    return-void
.end method

.method public fields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    const-string v1, "fields"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hasPipes(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1744
    .local p1, "args":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ConsoleEngine;->getPipes()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1745
    .local v0, "customPipes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1746
    .local v2, "a":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 1749
    .end local v2    # "a":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1747
    .restart local v2    # "a":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 1750
    .end local v2    # "a":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public indexOfLastDelim(Ljava/lang/String;)I
    .locals 7
    .param p1, "word"    # Ljava/lang/String;

    .line 1846
    const/4 v0, -0x1

    .line 1847
    .local v0, "out":I
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->delims:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1848
    .local v4, "d":Ljava/lang/String;
    const-string v5, "\\"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1849
    .local v5, "x":I
    if-le v5, v0, :cond_0

    .line 1850
    move v0, v5

    .line 1847
    .end local v4    # "d":Ljava/lang/String;
    .end local v5    # "x":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1853
    :cond_1
    return v0
.end method

.method public isPipe(Ljava/lang/String;)Z
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .line 1739
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ConsoleEngine;->getPipes()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1740
    .local v0, "customPipes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->isPipe(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public namedPipes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1882
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-static {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->access$500(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/ConsoleEngine;->getNamedPipes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes:Ljava/util/List;

    .line 1884
    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes:Ljava/util/List;

    return-object v0
.end method

.method public options()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1900
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public quoted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1896
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    const-string v1, "quoted"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public save()V
    .locals 4

    .line 1917
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->this$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->consoleEngine()Lorg/jline/console/ConsoleEngine;

    move-result-object v0

    .line 1918
    .local v0, "consoleEngine":Lorg/jline/console/ConsoleEngine;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fileNames:Ljava/nio/file/Path;

    if-eqz v1, :cond_0

    .line 1919
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxValueNames"

    invoke-interface {v0, v2, v1}, Lorg/jline/console/ConsoleEngine;->consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1920
    .local v1, "maxSize":I
    const-string v2, "fields"

    invoke-direct {p0, v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->truncate(Ljava/lang/String;I)V

    .line 1921
    const-string v2, "values"

    invoke-direct {p0, v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->truncate(Ljava/lang/String;I)V

    .line 1922
    const-string v2, "quoted"

    invoke-direct {p0, v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->truncate(Ljava/lang/String;I)V

    .line 1923
    const-string v2, "options"

    invoke-direct {p0, v2, v1}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->truncate(Ljava/lang/String;I)V

    .line 1924
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fileNames:Ljava/nio/file/Path;

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lorg/jline/console/ConsoleEngine;->persist(Ljava/nio/file/Path;Ljava/lang/Object;)V

    .line 1926
    .end local v1    # "maxSize":I
    :cond_0
    return-void
.end method

.method public values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1888
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->names:Ljava/util/Map;

    const-string v1, "values"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
