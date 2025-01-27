.class public Lorg/jline/console/impl/DefaultPrinter;
.super Lorg/jline/console/impl/JlineCommandRegistry;
.source "DefaultPrinter.java"

# interfaces
.implements Lorg/jline/console/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/impl/DefaultPrinter$TruncatedOutputException;,
        Lorg/jline/console/impl/DefaultPrinter$BadOptionValueException;
    }
.end annotation


# static fields
.field private static final NANORC_MAX_STRING_LENGTH:I = 0x190

.field private static final PRNT_INDENTION:I = 0x4

.field private static final PRNT_MAX_DEPTH:I = 0x1

.field private static final PRNT_MAX_ROWS:I = 0x186a0

.field private static final VAR_NANORC:Ljava/lang/String; = "NANORC"

.field private static final VAR_PRNT_OPTIONS:Ljava/lang/String; = "PRNT_OPTIONS"


# instance fields
.field private final configPath:Lorg/jline/builtins/ConfigurationPath;

.field private final engine:Lorg/jline/console/ScriptEngine;

.field private highlightValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Lorg/jline/utils/AttributedString;",
            ">;>;"
        }
    .end annotation
.end field

.field private objectToMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private objectToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private prntStyle:Lorg/jline/utils/StyleResolver;

.field private totLines:I


# direct methods
.method public constructor <init>(Lorg/jline/builtins/ConfigurationPath;)V
    .locals 1
    .param p1, "configPath"    # Lorg/jline/builtins/ConfigurationPath;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/DefaultPrinter;-><init>(Lorg/jline/console/ScriptEngine;Lorg/jline/builtins/ConfigurationPath;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/jline/console/ScriptEngine;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 1
    .param p1, "engine"    # Lorg/jline/console/ScriptEngine;
    .param p2, "configPath"    # Lorg/jline/builtins/ConfigurationPath;

    .line 61
    invoke-direct {p0}, Lorg/jline/console/impl/JlineCommandRegistry;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToString:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    .line 63
    iput-object p2, p0, Lorg/jline/console/impl/DefaultPrinter;->configPath:Lorg/jline/builtins/ConfigurationPath;

    .line 64
    return-void
.end method

.method private addPadding(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "width"    # I

    .line 506
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 507
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 508
    const-string v2, " "

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 511
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private addPadding(Lorg/jline/utils/AttributedString;I)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p1, "str"    # Lorg/jline/utils/AttributedString;
    .param p2, "width"    # I

    .line 497
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 498
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p1}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 499
    const-string v2, " "

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 502
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1
.end method

.method private canConvert(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jline/console/impl/DefaultPrinter;->simpleObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    invoke-direct {p0, p1}, Lorg/jline/console/impl/DefaultPrinter;->collectionObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0
.end method

.method private cellWidth(ILjava/util/List;ZLjava/lang/String;)I
    .locals 3
    .param p1, "pos"    # I
    .param p3, "rownum"    # Z
    .param p4, "columnSep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 989
    .local p2, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 990
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 992
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    .line 993
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    .line 992
    return v1
.end method

.method private collectionObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 965
    instance-of v0, p1, Ljava/util/Iterator;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Iterable;

    if-nez v0, :cond_1

    instance-of v0, p1, [Ljava/lang/Object;

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

.method private columnName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shortName"    # Z

    .line 688
    move-object v0, p1

    .line 689
    .local v0, "out":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 690
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "p":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 693
    .end local v1    # "p":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private columnValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 515
    const-string v0, "\r"

    const-string v1, "CR"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "LF"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private defaultPrntOptions(Z)Ljava/util/Map;
    .locals 3
    .param p1, "skipDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v2, "PRNT_OPTIONS"

    invoke-interface {v1, v2}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v1, v2}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    const-string v1, "skipDefaultOptions"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->manageBooleanOptions(Ljava/util/Map;)V

    .line 267
    :cond_0
    const v1, 0x186a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxrows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxDepth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "indention"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "columnsOut"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "columnsIn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    if-nez v1, :cond_1

    .line 273
    const-string v1, "objectToMap"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "objectToString"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "highlightValue"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_1
    return-object v0
.end method

.method private digits(I)I
    .locals 1
    .param p1, "number"    # I

    .line 979
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 980
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 981
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 982
    const/4 v0, 0x3

    return v0

    .line 984
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    :goto_1
    return v0
.end method

.method private doRowHighlight(ILorg/jline/console/Printer$TableRows;)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "tableRows"    # Lorg/jline/console/Printer$TableRows;

    .line 919
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 920
    return v0

    .line 922
    :cond_0
    sget-object v1, Lorg/jline/console/impl/DefaultPrinter$1;->$SwitchMap$org$jline$console$Printer$TableRows:[I

    invoke-virtual {p2}, Lorg/jline/console/Printer$TableRows;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 930
    return v0

    .line 928
    :pswitch_0
    return v2

    .line 926
    :pswitch_1
    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 924
    :pswitch_2
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasMatch(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 488
    .local p1, "regexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    .local v1, "r":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    .end local v1    # "r":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private highlight(Ljava/lang/Integer;Lorg/jline/builtins/Nano$SyntaxHighlighter;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "highlighter"    # Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .param p3, "object"    # Ljava/lang/String;

    .line 385
    invoke-direct {p0, p3}, Lorg/jline/console/impl/DefaultPrinter;->isValue(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/console/impl/DefaultPrinter;->highlight(Ljava/lang/Integer;Lorg/jline/builtins/Nano$SyntaxHighlighter;Ljava/lang/String;Z)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method private highlight(Ljava/lang/Integer;Lorg/jline/builtins/Nano$SyntaxHighlighter;Ljava/lang/String;Z)Lorg/jline/utils/AttributedString;
    .locals 5
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "highlighter"    # Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .param p3, "object"    # Ljava/lang/String;
    .param p4, "doValueHighlight"    # Z

    .line 390
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 391
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    move-object v1, p3

    .line 392
    .local v1, "val":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 393
    invoke-direct {p0, p3}, Lorg/jline/console/impl/DefaultPrinter;->truncate4nanorc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 396
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    if-eqz p4, :cond_1

    .line 397
    invoke-virtual {p2, v0}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Lorg/jline/utils/AttributedStringBuilder;)Lorg/jline/utils/AttributedString;

    move-result-object v2

    .local v2, "out":Lorg/jline/utils/AttributedString;
    goto :goto_0

    .line 399
    .end local v2    # "out":Lorg/jline/utils/AttributedString;
    :cond_1
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v2

    .line 401
    .restart local v2    # "out":Lorg/jline/utils/AttributedString;
    :goto_0
    if-eqz p1, :cond_2

    .line 402
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v2

    .line 404
    :cond_2
    return-object v2
.end method

.method private highlight(Lorg/jline/console/CmdDesc;)Lorg/jline/utils/AttributedString;
    .locals 10
    .param p1, "cmdDesc"    # Lorg/jline/console/CmdDesc;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->getMainDesc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/utils/AttributedString;

    .line 332
    .local v2, "as":Lorg/jline/utils/AttributedString;
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v2    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_0

    .line 335
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->getOptsDesc()Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 337
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 338
    .local v5, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v5, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 339
    const-string v6, "\t"

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 340
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 341
    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 342
    const/4 v7, 0x1

    .line 343
    .local v7, "first":Z
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/AttributedString;

    .line 344
    .local v9, "as":Lorg/jline/utils/AttributedString;
    if-nez v7, :cond_1

    .line 345
    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 346
    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 348
    :cond_1
    invoke-virtual {v5, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 349
    invoke-virtual {v5, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 350
    const/4 v7, 0x0

    .line 351
    .end local v9    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_2

    .line 352
    :cond_2
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    .end local v5    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v7    # "first":Z
    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/jline/builtins/Styles;->helpStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jline/builtins/Options$HelpException;->highlight(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v2

    return-object v2
.end method

.method private highlightAndPrint(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;

    .line 421
    invoke-direct {p0, p2}, Lorg/jline/console/impl/DefaultPrinter;->valueHighlighter(Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v0

    .line 422
    .local v0, "highlighter":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    invoke-direct {p0, p3}, Lorg/jline/console/impl/DefaultPrinter;->isValue(Ljava/lang/String;)Z

    move-result v1

    .line 423
    .local v1, "doValueHighlight":Z
    const-string v2, "\\r?\\n"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 424
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v6}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 425
    .local v6, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v6, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/jline/utils/AttributedStringBuilder;->columnSplitLength(I)Ljava/util/List;

    move-result-object v7

    .line 426
    .local v7, "sas":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/AttributedString;

    .line 427
    .local v9, "as":Lorg/jline/utils/AttributedString;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v0, v11, v1}, Lorg/jline/console/impl/DefaultPrinter;->highlight(Ljava/lang/Integer;Lorg/jline/builtins/Nano$SyntaxHighlighter;Ljava/lang/String;Z)Lorg/jline/utils/AttributedString;

    move-result-object v10

    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 428
    .end local v9    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_1

    .line 423
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v7    # "sas":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method

.method private highlightAndPrint(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 38
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 702
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "\\."

    const-string v5, "mapSimilarity"

    const-string v6, ""

    const-string v7, "columns"

    const-string v0, "width"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 703
    .local v8, "width":I
    const/4 v9, 0x0

    iput v9, v1, Lorg/jline/console/impl/DefaultPrinter;->totLines:I

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "message":Ljava/lang/String;
    const/4 v10, 0x0

    .line 706
    .local v10, "runtimeException":Ljava/lang/RuntimeException;
    if-nez v3, :cond_0

    goto/16 :goto_24

    .line 708
    :cond_0
    instance-of v11, v3, Ljava/util/Map;

    if-eqz v11, :cond_1

    .line 709
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-direct {v1, v4}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;I)V

    goto/16 :goto_24

    .line 710
    :cond_1
    invoke-direct {v1, v3}, Lorg/jline/console/impl/DefaultPrinter;->collectionObject(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "toString"

    const/4 v13, 0x0

    if-eqz v11, :cond_31

    .line 711
    invoke-direct {v1, v3}, Lorg/jline/console/impl/DefaultPrinter;->objectToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 712
    .local v11, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const-string v15, "maxrows"

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v14, v9, :cond_2

    .line 713
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Truncated output: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v9, v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v11, v9, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    move-object v9, v0

    goto :goto_0

    .line 712
    :cond_2
    move-object v9, v0

    .line 716
    .end local v0    # "message":Ljava/lang/String;
    .local v9, "message":Ljava/lang/String;
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 717
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_5

    const-string v0, "oneRowTable"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 718
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 719
    .local v0, "elem":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 720
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    invoke-direct {v1, v4}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;I)V

    goto :goto_1

    .line 721
    :cond_3
    invoke-direct {v1, v0}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 722
    invoke-direct {v1, v2, v0}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;I)V

    goto :goto_1

    .line 724
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v13, v4}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 726
    .end local v0    # "elem":Ljava/lang/Object;
    :goto_1
    move-object/from16 v20, v9

    goto/16 :goto_23

    .line 727
    :cond_5
    const-string v15, ""

    .line 728
    .local v15, "columnSep":Ljava/lang/String;
    const/16 v16, 0x0

    .line 729
    .local v16, "tableRows":Lorg/jline/console/Printer$TableRows;
    const-string v0, "rownum"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 731
    .local v14, "rownum":Z
    :try_start_0
    const-string v0, "border"

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 732
    const-string v0, "rowHighlight"

    invoke-interface {v2, v0, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jline/console/impl/DefaultPrinter;->optionRowHighlight(Ljava/lang/Object;)Lorg/jline/console/Printer$TableRows;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v0

    .line 737
    move-object/from16 v20, v9

    move-object/from16 v9, v16

    goto :goto_2

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/jline/console/impl/DefaultPrinter$BadOptionValueException;

    move-object/from16 v20, v9

    .end local v9    # "message":Ljava/lang/String;
    .local v20, "message":Ljava/lang/String;
    const-string v9, "Option border or rowHighlight has a bad value!"

    invoke-direct {v13, v9}, Lorg/jline/console/impl/DefaultPrinter$BadOptionValueException;-><init>(Ljava/lang/String;)V

    move-object v10, v13

    .line 736
    invoke-virtual {v10, v0}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v9, v16

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v9, "tableRows":Lorg/jline/console/Printer$TableRows;
    :goto_2
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 740
    .local v0, "elem":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 741
    .local v13, "convert":Z
    move-object/from16 v16, v10

    .end local v10    # "runtimeException":Ljava/lang/RuntimeException;
    .local v16, "runtimeException":Ljava/lang/RuntimeException;
    :try_start_2
    instance-of v10, v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    const-string v3, ".rn"

    move-object/from16 v21, v3

    const-string v3, ".rs"

    move-object/from16 v22, v3

    const-string v3, "\t"

    if-nez v10, :cond_7

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v23, v0

    move-object v10, v3

    move-object/from16 v32, v9

    move-object/from16 v35, v11

    goto/16 :goto_17

    :cond_7
    :goto_3
    :try_start_3
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    if-nez v10, :cond_23

    .line 742
    if-eqz v13, :cond_8

    :try_start_4
    invoke-direct {v1, v2, v0}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 895
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v13    # "convert":Z
    :catch_1
    move-exception v0

    move-object v3, v11

    move-object v11, v9

    goto/16 :goto_21

    .line 743
    .restart local v0    # "elem":Ljava/lang/Object;
    .restart local v13    # "convert":Z
    :cond_8
    :try_start_5
    move-object v10, v0

    check-cast v10, Ljava/util/Map;

    invoke-direct {v1, v10}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    :goto_4
    nop

    .line 745
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "columnsIn"

    invoke-direct {v1, v12, v2}, Lorg/jline/console/impl/DefaultPrinter;->optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    .line 746
    .local v12, "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v23, v0

    .end local v0    # "elem":Ljava/lang/Object;
    .local v23, "elem":Ljava/lang/Object;
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-nez v0, :cond_9

    :try_start_6
    const-string v0, "columnsOut"

    invoke-direct {v1, v0, v2}, Lorg/jline/console/impl/DefaultPrinter;->optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 747
    :cond_9
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    nop

    .line 748
    .local v0, "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v19, :cond_a

    .line 749
    :try_start_8
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v24, v3

    move-object/from16 v25, v9

    .local v19, "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_6

    .line 751
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v19, v12

    .line 752
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_9
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v25, v9

    .end local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v25, "tableRows":Lorg/jline/console/Printer$TableRows;
    :try_start_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    move-object/from16 v24, v3

    new-instance v3, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v12, v0}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;-><init>(Lorg/jline/console/impl/DefaultPrinter;Ljava/util/List;Ljava/util/List;)V

    .line 753
    invoke-interface {v9, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 754
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 752
    move-object/from16 v9, v19

    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v19, v9

    .line 756
    .end local v9    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v3, "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v9, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 759
    .local v26, "headerWidth":I
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v28, v27

    .line 760
    .local v28, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v29
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v30, v0

    .end local v0    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "shortNames"

    if-eqz v29, :cond_10

    :try_start_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v31, v29

    .line 761
    .local v31, "value":Ljava/lang/String;
    move-object/from16 v29, v12

    move-object/from16 v12, v31

    .end local v31    # "value":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    .local v29, "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v32, v6

    const/16 v17, 0x0

    aget-object v6, v31, v17

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 762
    goto :goto_8

    .line 764
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_9

    .line 766
    :cond_c
    const-string v6, "structsOnTable"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 767
    invoke-direct {v1, v2, v12, v10}, Lorg/jline/console/impl/DefaultPrinter;->mapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    .line 768
    .local v6, "val":Ljava/lang/Object;
    invoke-direct {v1, v6}, Lorg/jline/console/impl/DefaultPrinter;->simpleObject(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    .line 769
    nop

    .line 760
    .end local v6    # "val":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/String;
    :goto_8
    move-object/from16 v12, v29

    move-object/from16 v0, v30

    move-object/from16 v6, v32

    goto :goto_7

    .line 772
    .restart local v12    # "value":Ljava/lang/String;
    :cond_d
    :goto_9
    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v31, v12

    goto :goto_a

    :cond_e
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    aget-object v31, v6, v17

    :goto_a
    move-object/from16 v6, v31

    .line 773
    .local v6, "rk":Ljava/lang/String;
    move-object/from16 v31, v4

    move-object/from16 v4, v28

    .end local v28    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    move-object/from16 v28, v6

    .end local v6    # "rk":Ljava/lang/String;
    .local v28, "rk":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v1, v12, v6}, Lorg/jline/console/impl/DefaultPrinter;->columnName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "cn":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v18, 0x1

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v34, v7

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    add-int/lit8 v7, v7, 0x1

    add-int v7, v26, v7

    .line 778
    .end local v26    # "headerWidth":I
    .local v7, "headerWidth":I
    if-le v7, v8, :cond_f

    .line 779
    move/from16 v26, v7

    goto :goto_b

    .line 781
    .end local v6    # "cn":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v28    # "rk":Ljava/lang/String;
    :cond_f
    move-object/from16 v28, v4

    move/from16 v26, v7

    move-object/from16 v12, v29

    move-object/from16 v0, v30

    move-object/from16 v4, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v34

    goto/16 :goto_7

    .line 895
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "headerWidth":I
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "convert":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    move-object v3, v11

    move-object/from16 v11, v25

    goto/16 :goto_21

    .line 760
    .restart local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "convert":Z
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "elem":Ljava/lang/Object;
    .restart local v26    # "headerWidth":I
    .local v28, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v32, v6

    move-object/from16 v29, v12

    move-object/from16 v4, v28

    .line 782
    .end local v12    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    :try_start_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_22

    .line 785
    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 786
    .local v6, "mapSimilarity":D
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-eqz v12, :cond_11

    .line 787
    :try_start_d
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v27
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-wide/from16 v6, v27

    .line 789
    :cond_11
    :try_start_e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v12, :cond_17

    :try_start_f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 790
    .local v12, "o":Ljava/lang/Object;
    if-eqz v13, :cond_12

    invoke-direct {v1, v2, v12}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v27

    move-object/from16 v37, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v37

    goto :goto_d

    .line 791
    :cond_12
    move-object/from16 v27, v5

    move-object v5, v12

    check-cast v5, Ljava/util/Map;

    invoke-direct {v1, v5}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_d
    nop

    .line 792
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v28, v10

    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v28, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v10, v12, Ljava/util/Map;

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v1, v4, v10, v6, v7}, Lorg/jline/console/impl/DefaultPrinter;->similarSets(Ljava/util/Set;Ljava/util/Set;D)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_e

    .line 793
    :cond_13
    new-instance v0, Ljava/lang/Exception;

    const-string v10, "Not homogenous list!"

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v8    # "width":I
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v14    # "rownum":Z
    .end local v15    # "columnSep":Ljava/lang/String;
    .end local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .end local v20    # "message":Ljava/lang/String;
    .end local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local p1    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p2    # "obj":Ljava/lang/Object;
    throw v0

    .line 795
    .restart local v8    # "width":I
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v14    # "rownum":Z
    .restart local v15    # "columnSep":Ljava/lang/String;
    .restart local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .restart local v20    # "message":Ljava/lang/String;
    .restart local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local p1    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_14
    :goto_e
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f
    move-object/from16 v31, v4

    .end local v4    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v31, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_16

    .line 796
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlightMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v4

    .line 797
    .local v4, "cw":I
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v34, v5

    const/16 v18, 0x1

    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v34, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v5, v33, -0x1

    if-le v4, v5, :cond_15

    .line 798
    add-int/lit8 v5, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v10, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 795
    .end local v4    # "cw":I
    :cond_15
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v31

    move-object/from16 v5, v34

    goto :goto_f

    .end local v34    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_16
    move-object/from16 v34, v5

    .line 801
    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "i":I
    .end local v12    # "o":Ljava/lang/Object;
    move-object/from16 v5, v27

    move-object/from16 v10, v28

    move-object/from16 v4, v31

    goto :goto_c

    .line 802
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_17
    move-object/from16 v31, v4

    move-object/from16 v28, v10

    .end local v4    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_10
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v9, v4, v14, v15}, Lorg/jline/console/impl/DefaultPrinter;->toTabStops(Ljava/util/List;IZLjava/lang/String;)V

    .line 803
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    .line 804
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v5, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    const-string v10, ".th"

    invoke-virtual {v5, v10}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 805
    const/4 v5, 0x0

    .line 806
    .local v5, "firstColumn":I
    if-eqz v14, :cond_18

    .line 807
    const/4 v10, 0x0

    :try_start_11
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v10, v12

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    move-object/from16 v12, v32

    invoke-direct {v1, v12, v10}, Lorg/jline/console/impl/DefaultPrinter;->addPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 808
    invoke-virtual {v4, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 809
    move-object/from16 v10, v24

    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 810
    const/4 v5, 0x1

    goto :goto_10

    .line 806
    :cond_18
    move-object/from16 v10, v24

    .line 812
    :goto_10
    const/4 v12, 0x1

    .line 813
    .local v12, "first":Z
    :try_start_12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_11
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v27
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    if-eqz v27, :cond_1a

    :try_start_13
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v32, v27

    .line 814
    .local v32, "s":Ljava/lang/String;
    if-nez v12, :cond_19

    .line 815
    invoke-virtual {v4, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 817
    :cond_19
    move-wide/from16 v33, v6

    .end local v6    # "mapSimilarity":D
    .local v33, "mapSimilarity":D
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v7, v32

    .end local v32    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    invoke-direct {v1, v7, v6}, Lorg/jline/console/impl/DefaultPrinter;->columnName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 818
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 819
    const/4 v12, 0x0

    .line 820
    .end local v7    # "s":Ljava/lang/String;
    move-wide/from16 v6, v33

    goto :goto_11

    .line 821
    .end local v33    # "mapSimilarity":D
    .restart local v6    # "mapSimilarity":D
    :cond_1a
    move-wide/from16 v33, v6

    .end local v6    # "mapSimilarity":D
    .restart local v33    # "mapSimilarity":D
    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v4, v6, v8}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "row":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 824
    .local v7, "o":Ljava/lang/Object;
    move-object/from16 v24, v4

    .end local v4    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .local v24, "asb":Lorg/jline/utils/AttributedStringBuilder;
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    .line 825
    .local v4, "asb2":Lorg/jline/utils/AttributedStringBuilder;
    move-object/from16 v27, v6

    move-object/from16 v6, v25

    .end local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v6, "tableRows":Lorg/jline/console/Printer$TableRows;
    :try_start_15
    invoke-direct {v1, v0, v6}, Lorg/jline/console/impl/DefaultPrinter;->doRowHighlight(ILorg/jline/console/Printer$TableRows;)Z

    move-result v25
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    if-eqz v25, :cond_1b

    .line 826
    move/from16 v25, v12

    .end local v12    # "first":Z
    .local v25, "first":Z
    :try_start_16
    iget-object v12, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    move-object/from16 v32, v6

    move-object/from16 v6, v22

    .end local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v32, "tableRows":Lorg/jline/console/Printer$TableRows;
    :try_start_17
    invoke-virtual {v12, v6}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto :goto_13

    .line 895
    .end local v0    # "row":I
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "asb2":Lorg/jline/utils/AttributedStringBuilder;
    .end local v5    # "firstColumn":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "convert":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v24    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v25    # "first":Z
    .end local v26    # "headerWidth":I
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v33    # "mapSimilarity":D
    :catch_3
    move-exception v0

    move-object v3, v11

    move-object/from16 v11, v32

    goto/16 :goto_21

    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    :catch_4
    move-exception v0

    move-object v3, v11

    move-object v11, v6

    .end local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    goto/16 :goto_21

    .line 825
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v0    # "row":I
    .restart local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "asb2":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v5    # "firstColumn":I
    .restart local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "first":Z
    .restart local v13    # "convert":Z
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "elem":Ljava/lang/Object;
    .restart local v24    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v26    # "headerWidth":I
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v33    # "mapSimilarity":D
    :cond_1b
    move-object/from16 v32, v6

    move/from16 v25, v12

    move-object/from16 v6, v22

    .line 828
    .end local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v12    # "first":Z
    .restart local v25    # "first":Z
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    :goto_13
    if-eqz v14, :cond_1c

    .line 829
    :try_start_18
    iget-object v12, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    invoke-virtual {v12, v6}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    .line 830
    move-object/from16 v21, v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    move-object/from16 v35, v11

    const/4 v11, 0x0

    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v35, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_19
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v36

    sub-int v11, v11, v36

    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v1, v6, v11}, Lorg/jline/console/impl/DefaultPrinter;->addPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 829
    invoke-virtual {v4, v12, v6}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 831
    invoke-virtual {v4, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 832
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_14

    .line 895
    .end local v0    # "row":I
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "asb2":Lorg/jline/utils/AttributedStringBuilder;
    .end local v5    # "firstColumn":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "convert":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v24    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v25    # "first":Z
    .end local v26    # "headerWidth":I
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v33    # "mapSimilarity":D
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_5
    move-exception v0

    move-object v3, v11

    move-object/from16 v11, v32

    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_21

    .line 828
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "row":I
    .restart local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "asb2":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v5    # "firstColumn":I
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v13    # "convert":Z
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "elem":Ljava/lang/Object;
    .restart local v24    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v25    # "first":Z
    .restart local v26    # "headerWidth":I
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v33    # "mapSimilarity":D
    :cond_1c
    move-object/from16 v22, v6

    move-object/from16 v35, v11

    .line 834
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_14
    add-int/lit8 v0, v0, 0x1

    .line 835
    if-eqz v13, :cond_1d

    invoke-direct {v1, v2, v7}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    goto :goto_15

    .line 836
    :cond_1d
    move-object v6, v7

    check-cast v6, Ljava/util/Map;

    invoke-direct {v1, v6}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    :goto_15
    nop

    .line 837
    .local v6, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_20

    .line 838
    if-lez v11, :cond_1e

    .line 839
    invoke-virtual {v4, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 841
    :cond_1e
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v1, v2, v12, v6}, Lorg/jline/console/impl/DefaultPrinter;->highlightMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    .line 842
    .local v12, "v":Lorg/jline/utils/AttributedString;
    move/from16 v36, v0

    .end local v0    # "row":I
    .local v36, "row":I
    invoke-virtual {v12}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jline/console/impl/DefaultPrinter;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 843
    add-int v0, v5, v11

    invoke-direct {v1, v0, v9, v14, v15}, Lorg/jline/console/impl/DefaultPrinter;->cellWidth(ILjava/util/List;ZLjava/lang/String;)I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v12, v0}, Lorg/jline/console/impl/DefaultPrinter;->addPadding(Lorg/jline/utils/AttributedString;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    move-object v12, v0

    .line 845
    :cond_1f
    invoke-virtual {v4, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 846
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 837
    nop

    .end local v12    # "v":Lorg/jline/utils/AttributedString;
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v36

    goto :goto_16

    .end local v36    # "row":I
    .restart local v0    # "row":I
    :cond_20
    move/from16 v36, v0

    .line 848
    .end local v0    # "row":I
    .end local v11    # "i":I
    .restart local v36    # "row":I
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v8}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 849
    .end local v4    # "asb2":Lorg/jline/utils/AttributedStringBuilder;
    .end local v6    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "o":Ljava/lang/Object;
    move-object/from16 v4, v24

    move/from16 v12, v25

    move-object/from16 v6, v27

    move-object/from16 v25, v32

    move-object/from16 v11, v35

    move/from16 v0, v36

    goto/16 :goto_12

    .line 895
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "firstColumn":I
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "convert":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v24    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v25    # "first":Z
    .end local v26    # "headerWidth":I
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v33    # "mapSimilarity":D
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v36    # "row":I
    .local v6, "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v11, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_6
    move-exception v0

    move-object v3, v11

    move-object v11, v6

    .end local v6    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_21

    .line 823
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "row":I
    .restart local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v5    # "firstColumn":I
    .restart local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v12, "first":Z
    .restart local v13    # "convert":Z
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "elem":Ljava/lang/Object;
    .local v25, "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v26    # "headerWidth":I
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v33    # "mapSimilarity":D
    :cond_21
    move-object/from16 v24, v4

    move-object/from16 v35, v11

    move-object/from16 v32, v25

    move/from16 v25, v12

    .line 850
    .end local v0    # "row":I
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v5    # "firstColumn":I
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "first":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v26    # "headerWidth":I
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v33    # "mapSimilarity":D
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v11, v32

    move-object/from16 v3, v35

    goto/16 :goto_20

    .line 783
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v26    # "headerWidth":I
    .restart local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    move-object/from16 v31, v4

    move-object/from16 v28, v10

    move-object/from16 v35, v11

    move-object/from16 v32, v25

    .end local v4    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "No columns for table!"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v8    # "width":I
    .end local v14    # "rownum":Z
    .end local v15    # "columnSep":Ljava/lang/String;
    .end local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .end local v20    # "message":Ljava/lang/String;
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local p1    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p2    # "obj":Ljava/lang/Object;
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 895
    .end local v3    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "convert":Z
    .end local v19    # "_header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v26    # "headerWidth":I
    .end local v28    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "columnsIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "columnsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "refKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "width":I
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v14    # "rownum":Z
    .restart local v15    # "columnSep":Ljava/lang/String;
    .restart local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .restart local v20    # "message":Ljava/lang/String;
    .restart local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local p1    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2    # "obj":Ljava/lang/Object;
    :catch_7
    move-exception v0

    move-object v3, v11

    move-object/from16 v11, v25

    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v25    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_21

    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v9, "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_8
    move-exception v0

    move-object v3, v11

    move-object v11, v9

    .end local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_21

    .line 741
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v0, "elem":Ljava/lang/Object;
    .restart local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v13    # "convert":Z
    :cond_23
    move-object/from16 v23, v0

    move-object v10, v3

    move-object/from16 v32, v9

    move-object/from16 v35, v11

    .line 850
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v23    # "elem":Ljava/lang/Object;
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_17
    move-object/from16 v0, v23

    .end local v23    # "elem":Ljava/lang/Object;
    .restart local v0    # "elem":Ljava/lang/Object;
    :try_start_1a
    invoke-direct {v1, v0}, Lorg/jline/console/impl/DefaultPrinter;->collectionObject(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    if-eqz v3, :cond_2f

    :try_start_1b
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 851
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    if-eqz v5, :cond_27

    :try_start_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 853
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {v1, v5}, Lorg/jline/console/impl/DefaultPrinter;->objectToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 854
    .local v6, "inner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_19
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_26

    .line 855
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v1, v2, v9}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    .line 856
    .local v9, "len1":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, v7, :cond_24

    .line 857
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 858
    :cond_24
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v9, v11, :cond_25

    .line 859
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    .line 854
    .end local v9    # "len1":I
    :cond_25
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 862
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "inner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "i":I
    :cond_26
    goto :goto_18

    .line 895
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "convert":Z
    :catch_9
    move-exception v0

    move-object/from16 v11, v32

    move-object/from16 v3, v35

    goto/16 :goto_21

    .line 863
    .restart local v0    # "elem":Ljava/lang/Object;
    .restart local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "convert":Z
    :cond_27
    :try_start_1d
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v3, v4, v14, v15}, Lorg/jline/console/impl/DefaultPrinter;->toTabStops(Ljava/util/List;IZLjava/lang/String;)V

    .line 864
    const/4 v4, 0x0

    .line 865
    .local v4, "row":I
    if-eqz v14, :cond_28

    const/4 v5, 0x1

    goto :goto_1b

    :cond_28
    const/4 v5, 0x0

    .line 866
    .local v5, "firstColumn":I
    :goto_1b
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 867
    .local v7, "o":Ljava/lang/Object;
    new-instance v9, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v9}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    .line 868
    .local v9, "asb":Lorg/jline/utils/AttributedStringBuilder;
    move-object/from16 v11, v32

    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v11, "tableRows":Lorg/jline/console/Printer$TableRows;
    :try_start_1e
    invoke-direct {v1, v4, v11}, Lorg/jline/console/impl/DefaultPrinter;->doRowHighlight(ILorg/jline/console/Printer$TableRows;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 869
    iget-object v12, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    .end local v0    # "elem":Ljava/lang/Object;
    .restart local v23    # "elem":Ljava/lang/Object;
    invoke-virtual {v12, v0}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1d

    .line 868
    .end local v23    # "elem":Ljava/lang/Object;
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_29
    move-object/from16 v23, v0

    move-object/from16 v0, v22

    .line 871
    .end local v0    # "elem":Ljava/lang/Object;
    .restart local v23    # "elem":Ljava/lang/Object;
    :goto_1d
    if-eqz v14, :cond_2a

    .line 872
    iget-object v12, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    .line 873
    move-object/from16 v21, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v6

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v6, v6, v25

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v1, v0, v6}, Lorg/jline/console/impl/DefaultPrinter;->addPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-virtual {v9, v12, v0}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 874
    invoke-virtual {v9, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 875
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1e

    .line 871
    :cond_2a
    move-object/from16 v22, v0

    move-object/from16 v24, v6

    .line 877
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    .line 878
    invoke-direct {v1, v7}, Lorg/jline/console/impl/DefaultPrinter;->objectToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 879
    .local v0, "inner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_2d

    .line 880
    if-lez v6, :cond_2b

    .line 881
    invoke-virtual {v9, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 883
    :cond_2b
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "row":I
    .local v25, "row":I
    invoke-direct {v1, v2, v4, v12}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    move-object v4, v12

    .line 884
    .local v4, "v":Lorg/jline/utils/AttributedString;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/jline/console/impl/DefaultPrinter;->isNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 885
    add-int v12, v5, v6

    invoke-direct {v1, v12, v3, v14, v15}, Lorg/jline/console/impl/DefaultPrinter;->cellWidth(ILjava/util/List;ZLjava/lang/String;)I

    move-result v12

    const/16 v18, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v1, v4, v12}, Lorg/jline/console/impl/DefaultPrinter;->addPadding(Lorg/jline/utils/AttributedString;I)Lorg/jline/utils/AttributedString;

    move-result-object v12

    move-object v4, v12

    .line 887
    :cond_2c
    invoke-virtual {v9, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 888
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 879
    nop

    .end local v4    # "v":Lorg/jline/utils/AttributedString;
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v25

    goto :goto_1f

    .end local v25    # "row":I
    .local v4, "row":I
    :cond_2d
    move/from16 v25, v4

    .line 890
    .end local v4    # "row":I
    .end local v6    # "i":I
    .restart local v25    # "row":I
    const/4 v4, 0x0

    invoke-virtual {v9, v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    .line 891
    .end local v0    # "inner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    move-object/from16 v32, v11

    move-object/from16 v0, v23

    move-object/from16 v6, v24

    move/from16 v4, v25

    goto/16 :goto_1c

    .line 895
    .end local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "firstColumn":I
    .end local v13    # "convert":Z
    .end local v23    # "elem":Ljava/lang/Object;
    .end local v25    # "row":I
    :catch_a
    move-exception v0

    move-object/from16 v3, v35

    goto :goto_21

    .line 866
    .end local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v0, "elem":Ljava/lang/Object;
    .restart local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "row":I
    .restart local v5    # "firstColumn":I
    .restart local v13    # "convert":Z
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    :cond_2e
    move-object/from16 v23, v0

    move-object/from16 v11, v32

    .line 892
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v3    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "row":I
    .end local v5    # "firstColumn":I
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v23    # "elem":Ljava/lang/Object;
    move-object/from16 v3, v35

    goto :goto_20

    .line 895
    .end local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v13    # "convert":Z
    .end local v23    # "elem":Ljava/lang/Object;
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    :catch_b
    move-exception v0

    move-object/from16 v11, v32

    move-object/from16 v3, v35

    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    goto :goto_21

    .line 850
    .end local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v0    # "elem":Ljava/lang/Object;
    .restart local v13    # "convert":Z
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    :cond_2f
    move-object/from16 v23, v0

    move-object/from16 v11, v32

    .line 893
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v23    # "elem":Ljava/lang/Object;
    move-object/from16 v3, v35

    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v3, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_1f
    invoke-direct {v1, v2, v3, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightList(Ljava/util/Map;Ljava/util/List;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    .line 898
    .end local v13    # "convert":Z
    .end local v23    # "elem":Ljava/lang/Object;
    :goto_20
    goto :goto_22

    .line 895
    :catch_c
    move-exception v0

    goto :goto_21

    .end local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_d
    move-exception v0

    move-object/from16 v11, v32

    move-object/from16 v3, v35

    .end local v32    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v35    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    goto :goto_21

    .end local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v9, "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v11, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_e
    move-exception v0

    move-object v3, v11

    move-object v11, v9

    .end local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v11, "tableRows":Lorg/jline/console/Printer$TableRows;
    goto :goto_21

    .end local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .restart local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .local v10, "runtimeException":Ljava/lang/RuntimeException;
    .local v11, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_f
    move-exception v0

    move-object/from16 v16, v10

    move-object v3, v11

    move-object v11, v9

    .line 896
    .end local v9    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v10    # "runtimeException":Ljava/lang/RuntimeException;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v11, "tableRows":Lorg/jline/console/Printer$TableRows;
    .restart local v16    # "runtimeException":Ljava/lang/RuntimeException;
    :goto_21
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Stack: "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v4}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 897
    invoke-direct {v1, v2, v3, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightList(Ljava/util/Map;Ljava/util/List;I)V

    .line 899
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "tableRows":Lorg/jline/console/Printer$TableRows;
    .end local v14    # "rownum":Z
    .end local v15    # "columnSep":Ljava/lang/String;
    :goto_22
    move-object/from16 v10, v16

    goto :goto_23

    .line 901
    .end local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v16    # "runtimeException":Ljava/lang/RuntimeException;
    .end local v20    # "message":Ljava/lang/String;
    .local v9, "message":Ljava/lang/String;
    .restart local v10    # "runtimeException":Ljava/lang/RuntimeException;
    .local v11, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_30
    move-object/from16 v20, v9

    move-object v3, v11

    .end local v9    # "message":Ljava/lang/String;
    .end local v11    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v20    # "message":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 903
    .end local v3    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_23
    move-object/from16 v3, p2

    move-object/from16 v0, v20

    goto :goto_24

    .end local v20    # "message":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    :cond_31
    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 904
    invoke-direct/range {p0 .. p2}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4, v8}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;I)V

    goto :goto_24

    .line 906
    :cond_32
    invoke-direct/range {p0 .. p2}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 908
    :goto_24
    if-eqz v0, :cond_33

    .line 909
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 910
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v5, v1, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    const-string v6, ".em"

    invoke-virtual {v5, v6}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 911
    invoke-direct/range {p0 .. p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->println(Lorg/jline/terminal/Terminal;)V

    .line 913
    .end local v4    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_33
    if-nez v10, :cond_34

    .line 916
    return-void

    .line 914
    :cond_34
    throw v10
.end method

.method private highlightList(Ljava/util/Map;Ljava/util/List;I)V
    .locals 1
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 935
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/console/impl/DefaultPrinter;->highlightList(Ljava/util/Map;Ljava/util/List;II)V

    .line 936
    return-void
.end method

.method private highlightList(Ljava/util/Map;Ljava/util/List;II)V
    .locals 11
    .param p3, "width"    # I
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 940
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 941
    .local v0, "row":I
    const-string v1, "maxrows"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 942
    .local v1, "maxrows":I
    const-string v2, "indention"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 943
    .local v2, "indent":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v3, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    mul-int v4, v2, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    const-string v4, "rownum"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 946
    mul-int v5, v2, p4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/jline/console/impl/DefaultPrinter;->digits(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_0
    const-string v5, "maxColumnWidth"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 950
    .local v6, "o":Ljava/lang/Object;
    new-instance v7, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v7

    .line 951
    .local v7, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v8, "\t"

    if-lez p4, :cond_1

    .line 952
    invoke-virtual {v7, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 954
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 955
    iget-object v9, p0, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    const-string v10, ".rn"

    invoke-virtual {v9, v10}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 956
    invoke-virtual {v7, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 957
    add-int/lit8 v0, v0, 0x1

    .line 959
    :cond_2
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, v6}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 960
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p3}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    .line 961
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_0

    .line 962
    :cond_3
    return-void
.end method

.method private highlightMap(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 2
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1006
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;II)V

    goto :goto_0

    .line 1009
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1011
    :goto_0
    return-void
.end method

.method private highlightMap(Ljava/util/Map;Ljava/util/Map;II)V
    .locals 25
    .param p3, "width"    # I
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 1016
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, "maxrows"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1017
    .local v4, "maxrows":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1018
    .local v5, "max":I
    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "maxColumnWidth"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 1019
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1021
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1022
    .local v6, "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v7, "indention"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1024
    .local v7, "indent":I
    const-string v8, "maxDepth"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1025
    .local v8, "maxDepth":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1026
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v11, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v11}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    mul-int v14, v3, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    mul-int v14, v3, v7

    add-int/2addr v14, v5

    add-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v12, v15

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v11

    .line 1027
    .local v11, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v12, "\t"

    if-eqz v3, :cond_1

    .line 1028
    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1030
    :cond_1
    iget-object v14, v0, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    const-string v15, ".mk"

    invoke-virtual {v14, v15}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v0, v5, v15}, Lorg/jline/console/impl/DefaultPrinter;->truncateValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1031
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 1032
    .local v14, "elem":Ljava/lang/Object;
    invoke-direct {v0, v14}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v15

    .line 1033
    .local v15, "convert":Z
    const/16 v18, 0x1

    .line 1034
    .local v18, "highlightValue":Z
    if-ge v3, v8, :cond_8

    const-string v13, "toString"

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1035
    move/from16 v20, v7

    .end local v7    # "indent":I
    .local v20, "indent":I
    instance-of v7, v14, Ljava/util/Map;

    if-nez v7, :cond_5

    if-eqz v15, :cond_2

    move/from16 v23, v5

    move/from16 v21, v8

    move-object/from16 v22, v9

    goto :goto_1

    .line 1043
    :cond_2
    invoke-direct {v0, v14}, Lorg/jline/console/impl/DefaultPrinter;->collectionObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1044
    invoke-direct {v0, v14}, Lorg/jline/console/impl/DefaultPrinter;->objectToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1045
    .local v7, "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1046
    move/from16 v21, v8

    move-object/from16 v22, v9

    const/4 v8, 0x0

    .end local v8    # "maxDepth":I
    .local v21, "maxDepth":I
    invoke-virtual {v11, v8, v2}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-direct {v0, v9, v4}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    .line 1047
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1048
    .local v8, "listOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move/from16 v23, v5

    const/4 v9, 0x1

    .end local v5    # "max":I
    .local v23, "max":I
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v8, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    add-int/lit8 v5, v3, 0x1

    invoke-direct {v0, v8, v7, v2, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlightList(Ljava/util/Map;Ljava/util/List;II)V

    .line 1050
    const/16 v18, 0x0

    goto :goto_4

    .line 1045
    .end local v21    # "maxDepth":I
    .end local v23    # "max":I
    .restart local v5    # "max":I
    .local v8, "maxDepth":I
    :cond_3
    move/from16 v23, v5

    move/from16 v21, v8

    move-object/from16 v22, v9

    .end local v5    # "max":I
    .end local v8    # "maxDepth":I
    .restart local v21    # "maxDepth":I
    .restart local v23    # "max":I
    goto :goto_4

    .line 1043
    .end local v7    # "collection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v21    # "maxDepth":I
    .end local v23    # "max":I
    .restart local v5    # "max":I
    .restart local v8    # "maxDepth":I
    :cond_4
    move/from16 v23, v5

    move/from16 v21, v8

    move-object/from16 v22, v9

    .end local v5    # "max":I
    .end local v8    # "maxDepth":I
    .restart local v21    # "maxDepth":I
    .restart local v23    # "max":I
    goto :goto_3

    .line 1035
    .end local v21    # "maxDepth":I
    .end local v23    # "max":I
    .restart local v5    # "max":I
    .restart local v8    # "maxDepth":I
    :cond_5
    move/from16 v23, v5

    move/from16 v21, v8

    move-object/from16 v22, v9

    .line 1036
    .end local v5    # "max":I
    .end local v8    # "maxDepth":I
    .restart local v21    # "maxDepth":I
    .restart local v23    # "max":I
    :goto_1
    if-eqz v15, :cond_6

    invoke-direct {v0, v1, v14}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 1037
    :cond_6
    move-object v5, v14

    check-cast v5, Ljava/util/Map;

    invoke-direct {v0, v5}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_2
    nop

    .line 1038
    .local v5, "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1039
    const/4 v7, 0x0

    invoke-virtual {v11, v7, v2}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    .line 1040
    add-int/lit8 v7, v3, 0x1

    invoke-direct {v0, v1, v5, v2, v7}, Lorg/jline/console/impl/DefaultPrinter;->highlightMap(Ljava/util/Map;Ljava/util/Map;II)V

    .line 1041
    const/16 v18, 0x0

    .line 1043
    .end local v5    # "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    :goto_3
    goto :goto_4

    .line 1034
    .end local v20    # "indent":I
    .end local v21    # "maxDepth":I
    .end local v23    # "max":I
    .local v5, "max":I
    .local v7, "indent":I
    .restart local v8    # "maxDepth":I
    :cond_8
    move/from16 v23, v5

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    .line 1054
    .end local v5    # "max":I
    .end local v7    # "indent":I
    .end local v8    # "maxDepth":I
    .restart local v20    # "indent":I
    .restart local v21    # "maxDepth":I
    .restart local v23    # "max":I
    :goto_4
    if-eqz v18, :cond_d

    .line 1055
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v7, p2

    invoke-direct {v0, v6, v5, v7}, Lorg/jline/console/impl/DefaultPrinter;->highlightMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    .line 1056
    .local v5, "val":Lorg/jline/utils/AttributedString;
    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1057
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v8

    const-string v9, "\\r?\\n"

    const/16 v12, 0xa

    const/4 v13, 0x1

    if-ne v8, v13, :cond_b

    .line 1058
    invoke-virtual {v5, v12}, Lorg/jline/utils/AttributedString;->contains(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1059
    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_9

    aget-object v13, v8, v12

    .line 1060
    .local v13, "v":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v13}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1061
    move-object/from16 v24, v6

    const/4 v3, 0x0

    .end local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v24, "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v11, v3, v2}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    .line 1062
    new-instance v6, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v6}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object/from16 v17, v8

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v3

    add-int/lit8 v3, v23, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v16, 0x1

    aput-object v3, v8, v16

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v11

    .line 1059
    .end local v13    # "v":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p2

    move/from16 v3, p4

    move-object/from16 v8, v17

    move-object/from16 v6, v24

    goto :goto_5

    .end local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v24, v6

    .end local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .line 1065
    .end local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    move-object/from16 v24, v6

    .end local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v11, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1066
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    goto :goto_7

    .line 1069
    .end local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    move-object/from16 v24, v6

    .end local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5, v12}, Lorg/jline/utils/AttributedString;->contains(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1070
    new-instance v3, Lorg/jline/utils/AttributedString;

    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, v3

    .line 1071
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v3, v6}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_6

    .line 1073
    :cond_c
    invoke-virtual {v11, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1075
    :goto_6
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lorg/jline/console/impl/DefaultPrinter;->println(Lorg/jline/utils/AttributedString;I)V

    goto :goto_7

    .line 1054
    .end local v5    # "val":Lorg/jline/utils/AttributedString;
    .end local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    move-object/from16 v24, v6

    .line 1078
    .end local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v14    # "elem":Ljava/lang/Object;
    .end local v15    # "convert":Z
    .end local v18    # "highlightValue":Z
    .restart local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_7
    move/from16 v3, p4

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    goto/16 :goto_0

    .line 1079
    .end local v20    # "indent":I
    .end local v21    # "maxDepth":I
    .end local v23    # "max":I
    .end local v24    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "max":I
    .restart local v6    # "mapOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "indent":I
    .restart local v8    # "maxDepth":I
    :cond_e
    return-void
.end method

.method private highlightMapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 556
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jline/console/impl/DefaultPrinter;->mapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/console/impl/DefaultPrinter;->highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method private highlightValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/utils/AttributedString;
    .locals 10
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 570
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 571
    .local v0, "out":Lorg/jline/utils/AttributedString;
    const-string v1, "toString"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 572
    .local v1, "raw":Ljava/lang/Object;
    :goto_0
    const-string v2, "highlightValue"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_1

    .line 574
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    nop

    .line 575
    .local v2, "hv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "*"

    if-eqz p2, :cond_5

    invoke-direct {p0, v1}, Lorg/jline/console/impl/DefaultPrinter;->simpleObject(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 576
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 577
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    iget-object v6, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-interface {v6, v8, v9}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 579
    goto :goto_3

    .line 581
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_2

    .line 582
    :cond_3
    :goto_3
    if-nez v0, :cond_5

    .line 583
    iget-object v6, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 584
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/function/Function<Ljava/lang/Object;Lorg/jline/utils/AttributedString;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 585
    iget-object v6, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/function/Function;

    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 586
    goto :goto_5

    .line 588
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/function/Function<Ljava/lang/Object;Lorg/jline/utils/AttributedString;>;>;"
    :cond_4
    goto :goto_4

    .line 591
    :cond_5
    :goto_5
    if-nez v0, :cond_7

    .line 592
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 593
    new-instance v6, Lorg/jline/utils/AttributedString;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/jline/console/impl/DefaultPrinter;->columnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v6

    goto :goto_6

    .line 595
    :cond_6
    new-instance v6, Lorg/jline/utils/AttributedString;

    invoke-direct {p0, p1, v1}, Lorg/jline/console/impl/DefaultPrinter;->objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jline/console/impl/DefaultPrinter;->columnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 598
    :cond_7
    :goto_6
    invoke-direct {p0, v1}, Lorg/jline/console/impl/DefaultPrinter;->simpleObject(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v1, :cond_b

    :cond_8
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 599
    :cond_9
    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->isHighlighted(Lorg/jline/utils/AttributedString;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 600
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 601
    iget-object v6, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {v6, v7, v4}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 603
    :cond_a
    iget-object v3, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 604
    iget-object v3, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 607
    :cond_b
    const-string v3, "valueStyle"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->isHighlighted(Lorg/jline/utils/AttributedString;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 608
    const/4 v4, 0x0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-virtual {v0}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlight(Ljava/lang/Integer;Lorg/jline/builtins/Nano$SyntaxHighlighter;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 610
    :cond_c
    invoke-direct {p0, p1, v0}, Lorg/jline/console/impl/DefaultPrinter;->truncateValue(Ljava/util/Map;Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;

    move-result-object v3

    return-object v3
.end method

.method private internalPrintln(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 9
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 282
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 286
    .local v0, "start":J
    const-string v2, "exclude"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "columnsIn"

    if-eqz v3, :cond_1

    .line 287
    invoke-direct {p0, v2, p1}, Lorg/jline/console/impl/DefaultPrinter;->optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, "colOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v4, p1}, Lorg/jline/console/impl/DefaultPrinter;->optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 289
    .local v3, "colIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 290
    const-string v5, "columnsOut"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v2    # "colOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "colIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "include"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-direct {p0, v2, p1}, Lorg/jline/console/impl/DefaultPrinter;->optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 296
    .local v2, "colIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .end local v2    # "colIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v2, "valueStyle"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "valueStyle":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-direct {p0, v3}, Lorg/jline/console/impl/DefaultPrinter;->valueHighlighter(Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_3
    invoke-static {}, Lorg/jline/builtins/Styles;->prntStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/console/impl/DefaultPrinter;->prntStyle:Lorg/jline/utils/StyleResolver;

    .line 304
    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "width"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "style"

    const-string v5, ""

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "style":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 307
    .local v4, "width":I
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 308
    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v2, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlightAndPrint(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    :cond_4
    const-string v5, "JSON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 310
    iget-object v5, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    if-eqz v5, :cond_5

    .line 313
    invoke-interface {v5, p2}, Lorg/jline/console/ScriptEngine;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v2, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlightAndPrint(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "JSON style not supported!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_6
    const-string v5, "skipDefaultOptions"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/DefaultPrinter;->highlightAndPrint(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_7
    instance-of v5, p2, Ljava/lang/Exception;

    if-eqz v5, :cond_8

    .line 317
    invoke-static {}, Lorg/jline/console/SystemRegistry;->get()Lorg/jline/console/SystemRegistry;

    move-result-object v5

    const-string v6, "exception"

    const-string v7, "stack"

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v7, p2

    check-cast v7, Ljava/lang/Exception;

    invoke-interface {v5, v6, v7}, Lorg/jline/console/SystemRegistry;->trace(ZLjava/lang/Exception;)V

    goto :goto_1

    .line 318
    :cond_8
    instance-of v5, p2, Lorg/jline/console/CmdDesc;

    if-eqz v5, :cond_9

    .line 319
    move-object v5, p2

    check-cast v5, Lorg/jline/console/CmdDesc;

    invoke-direct {p0, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlight(Lorg/jline/console/CmdDesc;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    goto :goto_1

    .line 320
    :cond_9
    instance-of v5, p2, Ljava/lang/String;

    if-nez v5, :cond_b

    instance-of v5, p2, Ljava/lang/Number;

    if-eqz v5, :cond_a

    goto :goto_0

    .line 323
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jline/console/impl/DefaultPrinter;->highlightAndPrint(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_b
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lorg/jline/console/impl/DefaultPrinter;->highlightAndPrint(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_1
    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v5

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->flush()V

    .line 326
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "println: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, " msec"

    aput-object v7, v5, v6

    invoke-static {v5}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method private isHighlighted(Lorg/jline/utils/AttributedString;)Z
    .locals 5
    .param p1, "value"    # Lorg/jline/utils/AttributedString;

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jline/utils/AttributedString;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 561
    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v1

    sget-object v3, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 562
    const/4 v1, 0x1

    return v1

    .line 560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 697
    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 408
    const-string v0, "\"(\\.|[^\"])*\"|\'(\\.|[^\'])*\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 409
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 410
    :cond_0
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    :cond_1
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    :cond_2
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 416
    :cond_3
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 414
    :cond_5
    :goto_1
    return v1
.end method

.method private keysToString(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 433
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 435
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 437
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 440
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    goto :goto_0

    .line 443
    :cond_2
    return-object v0
.end method

.method private manageBooleanOptions(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lorg/jline/console/Printer;->BOOLEAN_KEYS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "value":Z
    :goto_1
    if-nez v2, :cond_1

    .line 253
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Z
    :cond_1
    goto :goto_0

    .line 257
    :cond_2
    return-void
.end method

.method private mapValue(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 448
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 449
    .local v0, "out":Ljava/lang/Object;
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 451
    :cond_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    const-string v1, "\\."

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 455
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 456
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/jline/console/impl/DefaultPrinter;->keysToString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 457
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v3, v0}, Lorg/jline/console/ScriptEngine;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->canConvert(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    invoke-direct {p0, p1, v0}, Lorg/jline/console/impl/DefaultPrinter;->objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 468
    :cond_3
    return-object v0
.end method

.method private objectToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 634
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 635
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 636
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 637
    :cond_1
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 638
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 639
    :cond_2
    instance-of v1, p1, Ljava/util/Iterator;

    if-eqz v1, :cond_3

    .line 640
    move-object v1, p1

    check-cast v1, Ljava/util/Iterator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 641
    :cond_3
    instance-of v1, p1, Ljava/lang/Iterable;

    if-eqz v1, :cond_4

    .line 642
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 644
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :goto_0
    return-object v0
.end method

.method private objectToMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 520
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    .line 521
    const-string v0, "objectToMap"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    nop

    .line 524
    .local v0, "toMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 526
    :cond_1
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 530
    .end local v0    # "toMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    :cond_2
    iget-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v0, p2}, Lorg/jline/console/ScriptEngine;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private objectToString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 535
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "null"

    .line 536
    .local v0, "out":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 537
    const-string v1, "objectToString"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 539
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    nop

    .line 540
    .local v1, "toString":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/jline/console/ScriptEngine;->execute(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 542
    :cond_1
    iget-object v2, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToString:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToString:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 544
    :cond_2
    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 545
    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_3
    iget-object v2, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    if-eqz v2, :cond_4

    .line 547
    invoke-interface {v2, p2}, Lorg/jline/console/ScriptEngine;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 549
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .end local v1    # "toString":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    :cond_5
    :goto_1
    return-object v0
.end method

.method private optionList(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 476
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 477
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 478
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 480
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported option list: {key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_2
    :goto_0
    return-object v0
.end method

.method private optionRowHighlight(Ljava/lang/Object;)Lorg/jline/console/Printer$TableRows;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 190
    instance-of v0, p1, Lorg/jline/console/Printer$TableRows;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-static {v0}, Lorg/jline/console/Printer$TableRows;->valueOf(Ljava/lang/String;)Lorg/jline/console/Printer$TableRows;

    move-result-object v1

    return-object v1

    .line 197
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 200
    .end local v0    # "val":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowHighlight has a bad option value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/jline/console/Printer$TableRows;

    return-object v0
.end method

.method private println(Lorg/jline/utils/AttributedString;I)V
    .locals 3
    .param p1, "line"    # Lorg/jline/utils/AttributedString;
    .param p2, "maxrows"    # I

    .line 679
    invoke-direct {p0}, Lorg/jline/console/impl/DefaultPrinter;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 680
    iget v0, p0, Lorg/jline/console/impl/DefaultPrinter;->totLines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jline/console/impl/DefaultPrinter;->totLines:I

    .line 681
    if-gt v0, p2, :cond_0

    .line 685
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/console/impl/DefaultPrinter;->totLines:I

    .line 683
    new-instance v0, Lorg/jline/console/impl/DefaultPrinter$TruncatedOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/console/impl/DefaultPrinter$TruncatedOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private similarSets(Ljava/util/Set;Ljava/util/Set;D)Z
    .locals 6
    .param p3, "threshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;D)Z"
        }
    .end annotation

    .line 650
    .local p1, "ref":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "c2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 651
    .local v0, "out":Z
    if-nez v0, :cond_3

    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, "matches":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 654
    .local v3, "s":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    add-int/lit8 v1, v1, 0x1

    .line 657
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 658
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    .line 659
    .local v4, "r":D
    cmpl-double v2, v4, p3

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 661
    .end local v1    # "matches":I
    .end local v4    # "r":D
    :cond_3
    return v0
.end method

.method private simpleObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 969
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

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

.method private terminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 245
    invoke-static {}, Lorg/jline/console/SystemRegistry;->get()Lorg/jline/console/SystemRegistry;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/console/SystemRegistry;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method private toTabStops(Ljava/util/List;IZLjava/lang/String;)V
    .locals 4
    .param p2, "rows"    # I
    .param p3, "rownum"    # Z
    .param p4, "columnSep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 997
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 998
    invoke-direct {p0, p2}, Lorg/jline/console/impl/DefaultPrinter;->digits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1000
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1001
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private truncate4nanorc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/String;

    .line 377
    move-object v0, p1

    .line 378
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x190

    if-le v1, v2, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    const/4 v1, 0x0

    const/16 v2, 0x18f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_0
    return-object v0
.end method

.method private truncateValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "maxWidth"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 624
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    return-object p2
.end method

.method private truncateValue(Ljava/util/Map;Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p2, "value"    # Lorg/jline/utils/AttributedString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jline/utils/AttributedString;",
            ")",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 614
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxColumnWidth"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 615
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 616
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v1, 0x0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p2, v1, v2}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 617
    const-string v1, "..."

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 618
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1

    .line 620
    .end local v0    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_0
    return-object p2
.end method

.method private valueHighlighter(Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .locals 4
    .param p1, "style"    # Ljava/lang/String;

    .line 359
    if-nez p1, :cond_0

    .line 360
    const/4 v0, 0x0

    .local v0, "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    goto :goto_1

    .line 361
    .end local v0    # "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    :cond_0
    const-string v0, "[a-z]+:.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-static {p1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v0

    .restart local v0    # "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    goto :goto_1

    .line 364
    .end local v0    # "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    :cond_1
    iget-object v0, p0, Lorg/jline/console/impl/DefaultPrinter;->configPath:Lorg/jline/builtins/ConfigurationPath;

    if-eqz v0, :cond_2

    const-string v1, "jnanorc"

    invoke-virtual {v0, v1}, Lorg/jline/builtins/ConfigurationPath;->getConfig(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 365
    .local v0, "nanorc":Ljava/nio/file/Path;
    :goto_0
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "NANORC"

    invoke-interface {v1, v3}, Lorg/jline/console/ScriptEngine;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter;->engine:Lorg/jline/console/ScriptEngine;

    invoke-interface {v1, v3}, Lorg/jline/console/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 368
    :cond_3
    if-nez v0, :cond_4

    .line 369
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/etc/nanorc"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 371
    :cond_4
    invoke-static {v0, p1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/nio/file/Path;Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v1

    move-object v0, v1

    .line 373
    .local v0, "out":Lorg/jline/builtins/Nano$SyntaxHighlighter;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public appendUsage([Ljava/lang/String;)[Ljava/lang/String;
    .locals 25
    .param p1, "customUsage"    # [Ljava/lang/String;

    .line 83
    move-object/from16 v0, p1

    const-string v1, "prnt -  print object"

    const-string v2, "Usage: prnt [OPTIONS] object"

    const-string v3, "  -? --help                       Displays command help"

    const-string v4, "  -a --all                        Ignore columnsOut configuration"

    const-string v5, "  -b --border=CHAR                Table cell vertical border character"

    const-string v6, "  -c --columns=COLUMNS,...        Display given columns on table"

    const-string v7, "  -e --exclude=COLUMNS,...        Exclude given columns on table"

    const-string v8, "  -i --include=COLUMNS,...        Include given columns on table"

    const-string v9, "     --indention=INDENTION        Indention size"

    const-string v10, "     --maxColumnWidth=WIDTH       Maximum column width"

    const-string v11, "  -d --maxDepth=DEPTH             Maximum depth objects are resolved"

    const-string v12, "     --maxrows=ROWS               Maximum number of lines to display"

    const-string v13, "     --oneRowTable                Display one row data on table"

    const-string v14, "  -h --rowHighlight=ROW           Highlight table rows. ROW = EVEN, ODD, ALL"

    const-string v15, "  -r --rownum                     Display table row numbers"

    const-string v16, "     --shortNames                 Truncate table column names (property.field -> field)"

    const-string v17, "     --skipDefaultOptions         Ignore all options defined in PRNT_OPTIONS"

    const-string v18, "     --structsOnTable             Display structs and lists on table"

    const-string v19, "  -s --style=STYLE                Use nanorc STYLE to highlight Object."

    const-string v20, "                                  STYLE = JSON serialize object to JSON string before printing"

    const-string v21, "     --toString                   Use object\'s toString() method to get print value"

    const-string v22, "                                  DEFAULT: object\'s fields are put to property map before printing"

    const-string v23, "     --valueStyle=STYLE           Use nanorc style to highlight string and column/map values"

    const-string v24, "  -w --width=WIDTH                Display width (default terminal width)"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "usage":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 114
    .local v2, "out":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v3, v1

    array-length v5, v0

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 111
    .end local v2    # "out":[Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v2, v1

    .line 117
    .restart local v2    # "out":[Ljava/lang/String;
    :goto_1
    return-object v2
.end method

.method public compileOptions(Lorg/jline/builtins/Options;)Ljava/util/Map;
    .locals 6
    .param p1, "opt"    # Lorg/jline/builtins/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/builtins/Options;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "skipDefaultOptions"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    .line 123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    :goto_0
    const-string v1, "toString"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    const-string v1, "rownum"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_4
    const-string v1, "oneRowTable"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_5
    const-string v1, "shortNames"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_6
    const-string v1, "structsOnTable"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_7
    const-string v1, "columns"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ","

    if-eqz v2, :cond_8

    .line 146
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_8
    const-string v1, "exclude"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 149
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_9
    const-string v1, "include"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 152
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_a
    const-string v1, "all"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 155
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_b
    const-string v1, "maxrows"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 158
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_c
    const-string v1, "maxColumnWidth"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 161
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_d
    const-string v1, "maxDepth"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 164
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_e
    const-string v1, "indention"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 167
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_f
    const-string v1, "valueStyle"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 170
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_10
    const-string v1, "border"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 173
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_11
    const-string v1, "rowHighlight"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 177
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/console/impl/DefaultPrinter;->optionRowHighlight(Ljava/lang/Object;)Lorg/jline/console/Printer$TableRows;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/jline/console/impl/DefaultPrinter$BadOptionValueException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowHighlight has a bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/jline/console/impl/DefaultPrinter$BadOptionValueException;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 181
    .local v1, "exception":Ljava/lang/RuntimeException;
    invoke-virtual {v1, v2}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 182
    throw v1

    .line 185
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_1
    const-string v1, "exception"

    const-string v2, "stack"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-object v0
.end method

.method synthetic lambda$highlightAndPrint$0$org-jline-console-impl-DefaultPrinter(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnsIn"    # Ljava/util/List;
    .param p2, "columnsOut"    # Ljava/util/List;
    .param p3, "k"    # Ljava/lang/String;

    .line 753
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/jline/console/impl/DefaultPrinter;->hasMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->defaultPrntOptions(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jline/console/impl/DefaultPrinter;->internalPrintln(Ljava/util/Map;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public println(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 5
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 73
    .local p1, "optionsIn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 75
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "skipDefaultOptions"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/jline/console/impl/DefaultPrinter;->defaultPrntOptions(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lorg/jline/console/impl/DefaultPrinter;->manageBooleanOptions(Ljava/util/Map;)V

    .line 79
    invoke-direct {p0, v0, p2}, Lorg/jline/console/impl/DefaultPrinter;->internalPrintln(Ljava/util/Map;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public prntCommand(Lorg/jline/console/CommandInput;)Ljava/lang/Exception;
    .locals 6
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "out":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jline/console/impl/DefaultPrinter;->appendUsage([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "usage":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/jline/console/CommandInput;->xargs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jline/console/impl/DefaultPrinter;->parseOptions([Ljava/lang/String;[Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v2

    .line 209
    .local v2, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {p0, v2}, Lorg/jline/console/impl/DefaultPrinter;->compileOptions(Lorg/jline/builtins/Options;)Ljava/util/Map;

    move-result-object v3

    .line 210
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/jline/builtins/Options;->argObjects()Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 212
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/jline/console/impl/DefaultPrinter;->println(Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "opt":Lorg/jline/builtins/Options;
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public setHighlightValue(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Lorg/jline/utils/AttributedString;",
            ">;>;)V"
        }
    .end annotation

    .line 241
    .local p1, "highlightValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<Ljava/lang/Object;Lorg/jline/utils/AttributedString;>;>;"
    iput-object p1, p0, Lorg/jline/console/impl/DefaultPrinter;->highlightValue:Ljava/util/Map;

    .line 242
    return-void
.end method

.method public setObjectToMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 225
    .local p1, "objectToMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<Ljava/lang/Object;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    iput-object p1, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToMap:Ljava/util/Map;

    .line 226
    return-void
.end method

.method public setObjectToString(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 233
    .local p1, "objectToString":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<Ljava/lang/Object;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lorg/jline/console/impl/DefaultPrinter;->objectToString:Ljava/util/Map;

    .line 234
    return-void
.end method
