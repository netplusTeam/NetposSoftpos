.class public interface abstract Lorg/jline/console/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/Printer$TableRows;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final BOOLEAN_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BORDER:Ljava/lang/String; = "border"

.field public static final COLUMNS:Ljava/lang/String; = "columns"

.field public static final COLUMNS_IN:Ljava/lang/String; = "columnsIn"

.field public static final COLUMNS_OUT:Ljava/lang/String; = "columnsOut"

.field public static final EXCLUDE:Ljava/lang/String; = "exclude"

.field public static final HIGHLIGHT_VALUE:Ljava/lang/String; = "highlightValue"

.field public static final INCLUDE:Ljava/lang/String; = "include"

.field public static final INDENTION:Ljava/lang/String; = "indention"

.field public static final MAP_SIMILARITY:Ljava/lang/String; = "mapSimilarity"

.field public static final MAXROWS:Ljava/lang/String; = "maxrows"

.field public static final MAX_COLUMN_WIDTH:Ljava/lang/String; = "maxColumnWidth"

.field public static final MAX_DEPTH:Ljava/lang/String; = "maxDepth"

.field public static final OBJECT_TO_MAP:Ljava/lang/String; = "objectToMap"

.field public static final OBJECT_TO_STRING:Ljava/lang/String; = "objectToString"

.field public static final ONE_ROW_TABLE:Ljava/lang/String; = "oneRowTable"

.field public static final ROWNUM:Ljava/lang/String; = "rownum"

.field public static final ROW_HIGHLIGHT:Ljava/lang/String; = "rowHighlight"

.field public static final SHORT_NAMES:Ljava/lang/String; = "shortNames"

.field public static final SKIP_DEFAULT_OPTIONS:Ljava/lang/String; = "skipDefaultOptions"

.field public static final STRUCT_ON_TABLE:Ljava/lang/String; = "structsOnTable"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TO_STRING:Ljava/lang/String; = "toString"

.field public static final VALUE_STYLE:Ljava/lang/String; = "valueStyle"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 185
    const-string v0, "all"

    const-string v1, "oneRowTable"

    const-string v2, "rownum"

    const-string v3, "shortNames"

    const-string v4, "skipDefaultOptions"

    const-string v5, "structsOnTable"

    const-string v6, "toString"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jline/console/Printer;->BOOLEAN_KEYS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, p1}, Lorg/jline/console/Printer;->println(Ljava/util/Map;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public abstract println(Ljava/util/Map;Ljava/lang/Object;)V
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
.end method

.method public prntCommand(Lorg/jline/console/CommandInput;)Ljava/lang/Exception;
    .locals 1
    .param p1, "input"    # Lorg/jline/console/CommandInput;

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method
