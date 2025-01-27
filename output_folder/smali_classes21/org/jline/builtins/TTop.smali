.class public Lorg/jline/builtins/TTop;
.super Ljava/lang/Object;
.source "TTop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/TTop$Column;,
        Lorg/jline/builtins/TTop$Operation;,
        Lorg/jline/builtins/TTop$Align;
    }
.end annotation


# static fields
.field public static final STAT_BLOCKED_COUNT:Ljava/lang/String; = "blocked_count"

.field public static final STAT_BLOCKED_TIME:Ljava/lang/String; = "blocked_time"

.field public static final STAT_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final STAT_CPU_TIME_PERC:Ljava/lang/String; = "cpu_time_perc"

.field public static final STAT_LOCK_NAME:Ljava/lang/String; = "lock_name"

.field public static final STAT_LOCK_OWNER_ID:Ljava/lang/String; = "lock_owner_id"

.field public static final STAT_LOCK_OWNER_NAME:Ljava/lang/String; = "lock_owner_name"

.field public static final STAT_NAME:Ljava/lang/String; = "name"

.field public static final STAT_STATE:Ljava/lang/String; = "state"

.field public static final STAT_TID:Ljava/lang/String; = "tid"

.field public static final STAT_UPTIME:Ljava/lang/String; = "uptime"

.field public static final STAT_USER_TIME:Ljava/lang/String; = "user_time"

.field public static final STAT_USER_TIME_PERC:Ljava/lang/String; = "user_time_perc"

.field public static final STAT_WAITED_COUNT:Ljava/lang/String; = "waited_count"

.field public static final STAT_WAITED_TIME:Ljava/lang/String; = "waited_time"


# instance fields
.field private final bindingReader:Lorg/jline/keymap/BindingReader;

.field private changes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final columns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/builtins/TTop$Column;",
            ">;"
        }
    .end annotation
.end field

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public delay:J

.field private final display:Lorg/jline/utils/Display;

.field private final keys:Lorg/jline/keymap/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/TTop$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public nthreads:I

.field private previous:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final size:Lorg/jline/terminal/Size;

.field public sort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final terminal:Lorg/jline/terminal/Terminal;

.field private widths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TeudbZcBi5GvEM63vzCzTDAPKns(Lorg/jline/builtins/TTop;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/builtins/TTop;->handle(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 6
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    .line 104
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-direct {v0}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->previous:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->changes:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    .line 115
    iput-object p1, p0, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    .line 116
    new-instance v0, Lorg/jline/utils/Display;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->display:Lorg/jline/utils/Display;

    .line 117
    new-instance v0, Lorg/jline/keymap/BindingReader;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/keymap/BindingReader;-><init>(Lorg/jline/utils/NonBlockingReader;)V

    iput-object v0, p0, Lorg/jline/builtins/TTop;->bindingReader:Lorg/jline/keymap/BindingReader;

    .line 119
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 120
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 121
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00%"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 123
    .local v1, "perc":Ljava/text/DecimalFormat;
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda3;-><init>()V

    const-string v4, "tid"

    const-string v5, "TID"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 124
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    const/16 v3, 0x28

    invoke-static {v3}, Lorg/jline/builtins/TTop;->padcut(I)Ljava/util/function/Function;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "NAME"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 125
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda6;-><init>()V

    const-string v4, "state"

    const-string v5, "STATE"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 126
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda7;-><init>()V

    const-string v4, "blocked_time"

    const-string v5, "T-BLOCKED"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 127
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;-><init>()V

    const-string v4, "blocked_count"

    const-string v5, "#-BLOCKED"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 128
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda9;-><init>()V

    const-string v4, "waited_time"

    const-string v5, "T-WAITED"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 129
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;-><init>()V

    const-string v4, "waited_count"

    const-string v5, "#-WAITED"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 130
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda8;-><init>()V

    const-string v4, "lock_name"

    const-string v5, "LOCK-NAME"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 131
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda10;-><init>()V

    const-string v4, "lock_owner_id"

    const-string v5, "LOCK-OWNER-ID"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 132
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda12;-><init>()V

    const-string v4, "lock_owner_name"

    const-string v5, "LOCK-OWNER-NAME"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 133
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda13;-><init>()V

    const-string v4, "user_time"

    const-string v5, "T-USR"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 134
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda4;-><init>()V

    const-string v4, "cpu_time"

    const-string v5, "T-CPU"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 135
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda5;-><init>(Ljava/text/DecimalFormat;)V

    const-string v4, "user_time_perc"

    const-string v5, "%-USR"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 136
    sget-object v2, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda5;-><init>(Ljava/text/DecimalFormat;)V

    const-string v4, "cpu_time_perc"

    const-string v5, "%-CPU"

    invoke-direct {p0, v4, v2, v5, v3}, Lorg/jline/builtins/TTop;->register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    .line 138
    new-instance v2, Lorg/jline/keymap/KeyMap;

    invoke-direct {v2}, Lorg/jline/keymap/KeyMap;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/TTop;->keys:Lorg/jline/keymap/KeyMap;

    .line 139
    invoke-direct {p0, v2}, Lorg/jline/builtins/TTop;->bindKeys(Lorg/jline/keymap/KeyMap;)V

    .line 140
    return-void
.end method

.method private align(Lorg/jline/utils/AttributedStringBuilder;Ljava/lang/String;ILorg/jline/builtins/TTop$Align;)V
    .locals 3
    .param p1, "sb"    # Lorg/jline/utils/AttributedStringBuilder;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "align"    # Lorg/jline/builtins/TTop$Align;

    .line 311
    sget-object v0, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    const/16 v1, 0x20

    if-ne p4, v0, :cond_1

    .line 312
    invoke-virtual {p1, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p3, v2

    if-ge v0, v2, :cond_0

    .line 314
    invoke-virtual {p1, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 317
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p3, v2

    if-ge v0, v2, :cond_2

    .line 318
    invoke-virtual {p1, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 322
    :goto_2
    return-void
.end method

.method private bindKeys(Lorg/jline/keymap/KeyMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/TTop$Operation;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/TTop$Operation;>;"
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->HELP:Lorg/jline/builtins/TTop$Operation;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, "h"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "?"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 601
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->EXIT:Lorg/jline/builtins/TTop$Operation;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "q"

    aput-object v3, v2, v4

    const-string v3, ":q"

    aput-object v3, v2, v5

    const-string v3, "Q"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, ":Q"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "ZZ"

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 602
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->INCREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 603
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->DECREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 604
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->CLEAR:Lorg/jline/builtins/TTop$Operation;

    const/16 v1, 0x4c

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 605
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->REVERSE:Lorg/jline/builtins/TTop$Operation;

    const-string v1, "r"

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 606
    return-void
.end method

.method private buildComparator(Ljava/util/List;)Ljava/util/Comparator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 491
    .local p1, "sort":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    const-string v0, "tid"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 494
    :cond_1
    const/4 v0, 0x0

    .line 495
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "key":Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "fkey":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "asc":Z
    goto :goto_1

    .line 501
    .end local v3    # "fkey":Ljava/lang/String;
    .end local v4    # "asc":Z
    :cond_2
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .restart local v3    # "fkey":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "asc":Z
    goto :goto_1

    .line 505
    .end local v3    # "fkey":Ljava/lang/String;
    .end local v4    # "asc":Z
    :cond_3
    move-object v3, v2

    .line 506
    .restart local v3    # "fkey":Ljava/lang/String;
    const/4 v4, 0x1

    .line 508
    .restart local v4    # "asc":Z
    :goto_1
    iget-object v5, p0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 512
    new-instance v5, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda14;

    invoke-direct {v5, v3}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v5

    .line 513
    .local v5, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    if-eqz v4, :cond_4

    .line 514
    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    .line 516
    :cond_4
    if-eqz v0, :cond_5

    .line 517
    invoke-interface {v0, v5}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_2

    .line 519
    :cond_5
    move-object v0, v5

    .line 521
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "fkey":Ljava/lang/String;
    .end local v4    # "asc":Z
    .end local v5    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    :goto_2
    goto :goto_0

    .line 509
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "fkey":Ljava/lang/String;
    .restart local v4    # "asc":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported sort key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "fkey":Ljava/lang/String;
    .end local v4    # "asc":Z
    :cond_7
    return-object v0
.end method

.method private checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 593
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private display()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, "now":J
    iget-object v3, v0, Lorg/jline/builtins/TTop;->display:Lorg/jline/utils/Display;

    iget-object v4, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getRows()I

    move-result v4

    iget-object v5, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v5}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/jline/utils/Display;->resize(II)V

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    iget-object v5, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v5}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 333
    .local v4, "sb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/utils/AttributedStyle;->bold()Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 334
    const-string v5, "ttop"

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 335
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/utils/AttributedStyle;->boldOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 336
    const-string v5, " - "

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 337
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "%8tT"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 338
    const-string v6, "."

    invoke-virtual {v4, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 341
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v7

    .line 342
    .local v7, "os":Ljava/lang/management/OperatingSystemMXBean;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/management/OperatingSystemMXBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/management/OperatingSystemMXBean;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/management/OperatingSystemMXBean;->getArch()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/management/OperatingSystemMXBean;->getAvailableProcessors()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " cpus."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "osinfo":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 344
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 349
    :goto_0
    invoke-virtual {v4, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 351
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getClassLoadingMXBean()Ljava/lang/management/ClassLoadingMXBean;

    move-result-object v12

    .line 352
    .local v12, "cl":Ljava/lang/management/ClassLoadingMXBean;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Classes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/lang/management/ClassLoadingMXBean;->getLoadedClassCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " loaded, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/lang/management/ClassLoadingMXBean;->getUnloadedClassCount()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " unloaded, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/lang/management/ClassLoadingMXBean;->getTotalLoadedClassCount()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " loaded total."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 353
    .local v13, "clsinfo":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v15}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 354
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 356
    :cond_1
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 359
    :goto_1
    invoke-virtual {v4, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 361
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v14

    .line 362
    .local v14, "th":Ljava/lang/management/ThreadMXBean;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threads: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v14}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", peak: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v14}, Ljava/lang/management/ThreadMXBean;->getPeakThreadCount()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", started: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v15, v12

    move-object/from16 v17, v13

    .end local v12    # "cl":Ljava/lang/management/ClassLoadingMXBean;
    .end local v13    # "clsinfo":Ljava/lang/String;
    .local v15, "cl":Ljava/lang/management/ClassLoadingMXBean;
    .local v17, "clsinfo":Ljava/lang/String;
    invoke-interface {v14}, Ljava/lang/management/ThreadMXBean;->getTotalStartedThreadCount()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "thinfo":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 364
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 366
    :cond_2
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 369
    :goto_2
    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 371
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v12

    .line 372
    .local v12, "me":Ljava/lang/management/MemoryMXBean;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory: heap: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v13

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .end local v7    # "os":Ljava/lang/management/OperatingSystemMXBean;
    .end local v8    # "thinfo":Ljava/lang/String;
    .local v19, "os":Ljava/lang/management/OperatingSystemMXBean;
    .local v20, "thinfo":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-interface {v12}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v13

    move-object/from16 v21, v14

    .end local v14    # "th":Ljava/lang/management/ThreadMXBean;
    .local v21, "th":Ljava/lang/management/ThreadMXBean;
    invoke-virtual {v13}, Ljava/lang/management/MemoryUsage;->getMax()J

    move-result-wide v13

    invoke-static {v7, v8, v13, v14}, Lorg/jline/builtins/TTop;->memory(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", non heap: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 373
    invoke-interface {v12}, Ljava/lang/management/MemoryMXBean;->getNonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-interface {v12}, Ljava/lang/management/MemoryMXBean;->getNonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/management/MemoryUsage;->getMax()J

    move-result-wide v13

    invoke-static {v7, v8, v13, v14}, Lorg/jline/builtins/TTop;->memory(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "meinfo":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 375
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_3

    .line 377
    :cond_3
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 380
    :goto_3
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v7, "sbc":Ljava/lang/StringBuilder;
    const-string v8, "GC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const/4 v8, 0x1

    .line 385
    .local v8, "first":Z
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getGarbageCollectorMXBeans()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/management/GarbageCollectorMXBean;

    .line 386
    .local v14, "gc":Ljava/lang/management/GarbageCollectorMXBean;
    if-eqz v8, :cond_4

    .line 387
    const/4 v8, 0x0

    goto :goto_5

    .line 389
    :cond_4
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :goto_5
    invoke-interface {v14}, Ljava/lang/management/GarbageCollectorMXBean;->getCollectionCount()J

    move-result-wide v22

    .line 392
    .local v22, "count":J
    invoke-interface {v14}, Ljava/lang/management/GarbageCollectorMXBean;->getCollectionTime()J

    move-result-wide v24

    .line 393
    .local v24, "time":J
    move-object/from16 v26, v5

    .end local v5    # "meinfo":Ljava/lang/String;
    .local v26, "meinfo":Ljava/lang/String;
    invoke-interface {v14}, Ljava/lang/management/GarbageCollectorMXBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v27, v8

    .end local v8    # "first":Z
    .local v27, "first":Z
    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " col. / "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v28, v9

    const/4 v8, 0x1

    .end local v9    # "osinfo":Ljava/lang/String;
    .local v28, "osinfo":Ljava/lang/String;
    new-array v9, v8, [Ljava/lang/Object;

    const-wide/16 v29, 0x3e8

    div-long v31, v24, v29

    .line 395
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v9, v16

    const-string v8, "%d"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    rem-long v29, v24, v29

    .line 397
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v9, v16

    const-string v8, "%03d"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    const-string v8, " s"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .end local v14    # "gc":Ljava/lang/management/GarbageCollectorMXBean;
    .end local v22    # "count":J
    .end local v24    # "time":J
    move-object/from16 v5, v26

    move/from16 v8, v27

    move-object/from16 v9, v28

    goto :goto_4

    .line 400
    .end local v26    # "meinfo":Ljava/lang/String;
    .end local v27    # "first":Z
    .end local v28    # "osinfo":Ljava/lang/String;
    .restart local v5    # "meinfo":Ljava/lang/String;
    .restart local v8    # "first":Z
    .restart local v9    # "osinfo":Ljava/lang/String;
    :cond_5
    move-object/from16 v26, v5

    move-object/from16 v28, v9

    .end local v5    # "meinfo":Ljava/lang/String;
    .end local v9    # "osinfo":Ljava/lang/String;
    .restart local v26    # "meinfo":Ljava/lang/String;
    .restart local v28    # "osinfo":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 402
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    const/4 v5, 0x0

    goto :goto_6

    .line 404
    :cond_6
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 407
    :goto_6
    invoke-virtual {v4, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 408
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 411
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/TTop;->infos()Ljava/util/List;

    move-result-object v5

    .line 415
    .local v5, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    iget-object v6, v0, Lorg/jline/builtins/TTop;->comparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    iget-object v6, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v6, v9

    add-int/lit8 v6, v6, -0x2

    iget v9, v0, Lorg/jline/builtins/TTop;->nthreads:I

    if-lez v9, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_7
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 418
    .local v6, "nb":I
    const/4 v9, 0x0

    invoke-interface {v5, v9, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v11, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda15;

    invoke-direct {v11, v0}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda15;-><init>(Lorg/jline/builtins/TTop;)V

    .line 419
    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 423
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 424
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v11, v0, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 425
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v14

    move-object/from16 v22, v7

    .end local v7    # "sbc":Ljava/lang/StringBuilder;
    .local v22, "sbc":Ljava/lang/StringBuilder;
    new-instance v7, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda16;

    invoke-direct {v7, v13}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v7

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v7

    .line 426
    .local v7, "width":I
    iget-object v14, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    move/from16 v23, v8

    .end local v8    # "first":Z
    .local v23, "first":Z
    iget-object v8, v0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/builtins/TTop$Column;

    iget-object v8, v8, Lorg/jline/builtins/TTop$Column;->header:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v24, v11

    iget-object v11, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    move-object/from16 v25, v12

    const/16 v16, 0x0

    .end local v12    # "me":Ljava/lang/management/MemoryMXBean;
    .local v25, "me":Ljava/lang/management/MemoryMXBean;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v7    # "width":I
    .end local v13    # "key":Ljava/lang/String;
    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    goto :goto_8

    .line 429
    .end local v22    # "sbc":Ljava/lang/StringBuilder;
    .end local v23    # "first":Z
    .end local v25    # "me":Ljava/lang/management/MemoryMXBean;
    .local v7, "sbc":Ljava/lang/StringBuilder;
    .restart local v8    # "first":Z
    .restart local v12    # "me":Ljava/lang/management/MemoryMXBean;
    :cond_8
    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v12

    .end local v7    # "sbc":Ljava/lang/StringBuilder;
    .end local v8    # "first":Z
    .end local v12    # "me":Ljava/lang/management/MemoryMXBean;
    .restart local v22    # "sbc":Ljava/lang/StringBuilder;
    .restart local v23    # "first":Z
    .restart local v25    # "me":Ljava/lang/management/MemoryMXBean;
    iget-object v7, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda17;

    invoke-direct {v8}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->sum()I

    move-result v7

    iget-object v8, v0, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-object v8, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 430
    iget-object v7, v0, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .local v7, "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_a

    .line 432
    .end local v7    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .restart local v7    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 434
    .local v8, "sz":I
    iget-object v11, v0, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 435
    .local v12, "stat":Ljava/lang/String;
    move v13, v8

    .line 436
    .local v13, "nsz":I
    if-lez v13, :cond_a

    .line 437
    add-int/lit8 v13, v13, 0x1

    .line 439
    :cond_a
    iget-object v14, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v13, v14

    .line 440
    iget-object v14, v0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 441
    move v8, v13

    .line 442
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v12    # "stat":Ljava/lang/String;
    .end local v13    # "nsz":I
    goto :goto_9

    .line 449
    .end local v8    # "sz":I
    :cond_b
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 450
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_c

    .line 451
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 453
    :cond_c
    iget-object v12, v0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/builtins/TTop$Column;

    .line 454
    .local v12, "col":Lorg/jline/builtins/TTop$Column;
    iget-object v13, v12, Lorg/jline/builtins/TTop$Column;->header:Ljava/lang/String;

    iget-object v14, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v18, v8

    iget-object v8, v12, Lorg/jline/builtins/TTop$Column;->align:Lorg/jline/builtins/TTop$Align;

    invoke-direct {v0, v4, v13, v14, v8}, Lorg/jline/builtins/TTop;->align(Lorg/jline/utils/AttributedStringBuilder;Ljava/lang/String;ILorg/jline/builtins/TTop$Align;)V

    .line 455
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "col":Lorg/jline/builtins/TTop$Column;
    move-object/from16 v8, v18

    goto :goto_b

    .line 456
    :cond_d
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 459
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    if-ge v8, v6, :cond_12

    .line 460
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 461
    .local v11, "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    const-string v12, "tid"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 462
    .local v12, "tid":J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v24, v5

    .end local v5    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .local v24, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    .line 463
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 464
    invoke-virtual {v4, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 467
    :cond_e
    move/from16 v18, v6

    .end local v6    # "nb":I
    .local v18, "nb":I
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 468
    .local v6, "cur":Ljava/lang/Object;
    move-object/from16 v27, v7

    .end local v7    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Lorg/jline/builtins/TTop;->previous:Ljava/util/Map;

    move-object/from16 v29, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v30, v11

    .end local v11    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    .local v30, "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    new-instance v11, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda18;

    invoke-direct {v11}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 469
    .local v7, "prv":Ljava/lang/Object;
    if-eqz v7, :cond_f

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 470
    iget-object v10, v0, Lorg/jline/builtins/TTop;->changes:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v31, v6

    .end local v6    # "cur":Ljava/lang/Object;
    .local v31, "cur":Ljava/lang/Object;
    new-instance v6, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-wide v10, v1

    .local v10, "last":J
    goto :goto_e

    .line 469
    .end local v10    # "last":J
    .end local v31    # "cur":Ljava/lang/Object;
    .restart local v6    # "cur":Ljava/lang/Object;
    :cond_f
    move-object/from16 v31, v6

    .line 473
    .end local v6    # "cur":Ljava/lang/Object;
    .restart local v31    # "cur":Ljava/lang/Object;
    iget-object v6, v0, Lorg/jline/builtins/TTop;->changes:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda20;

    invoke-direct {v11}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 475
    .restart local v10    # "last":J
    :goto_e
    move-object/from16 v32, v7

    .end local v7    # "prv":Ljava/lang/Object;
    .local v32, "prv":Ljava/lang/Object;
    iget-wide v6, v0, Lorg/jline/builtins/TTop;->delay:J

    const-wide/16 v33, 0x18

    mul-long v6, v6, v33

    .line 476
    .local v6, "fade":J
    sub-long v35, v1, v10

    cmp-long v35, v35, v6

    if-gez v35, :cond_10

    .line 477
    sub-long v35, v1, v10

    div-long v33, v6, v33

    move-wide/from16 v37, v1

    .end local v1    # "now":J
    .local v37, "now":J
    div-long v1, v35, v33

    long-to-int v1, v1

    .line 478
    .local v1, "r":I
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    move-wide/from16 v33, v6

    .end local v6    # "fade":J
    .local v33, "fade":J
    rsub-int v6, v1, 0xff

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_f

    .line 476
    .end local v33    # "fade":J
    .end local v37    # "now":J
    .local v1, "now":J
    .restart local v6    # "fade":J
    :cond_10
    move-wide/from16 v37, v1

    move-wide/from16 v33, v6

    .line 480
    .end local v1    # "now":J
    .end local v6    # "fade":J
    .restart local v33    # "fade":J
    .restart local v37    # "now":J
    :goto_f
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/jline/builtins/TTop;->widths:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jline/builtins/TTop$Column;

    iget-object v6, v6, Lorg/jline/builtins/TTop$Column;->align:Lorg/jline/builtins/TTop$Align;

    invoke-direct {v0, v4, v1, v2, v6}, Lorg/jline/builtins/TTop;->align(Lorg/jline/utils/AttributedStringBuilder;Ljava/lang/String;ILorg/jline/builtins/TTop$Align;)V

    .line 481
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStyle;->backgroundOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStyle;->foregroundOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 482
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "last":J
    .end local v31    # "cur":Ljava/lang/Object;
    .end local v32    # "prv":Ljava/lang/Object;
    .end local v33    # "fade":J
    move/from16 v6, v18

    move-object/from16 v5, v24

    move-object/from16 v7, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-wide/from16 v1, v37

    goto/16 :goto_d

    .line 483
    .end local v18    # "nb":I
    .end local v24    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .end local v27    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    .end local v37    # "now":J
    .restart local v1    # "now":J
    .local v5, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .local v6, "nb":I
    .local v7, "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    :cond_11
    move-wide/from16 v37, v1

    move-object/from16 v24, v5

    move/from16 v18, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    .end local v1    # "now":J
    .end local v5    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .end local v6    # "nb":I
    .end local v7    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    .restart local v18    # "nb":I
    .restart local v24    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .restart local v27    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    .restart local v37    # "now":J
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 459
    .end local v12    # "tid":J
    .end local v30    # "thread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v1, v37

    goto/16 :goto_c

    .end local v18    # "nb":I
    .end local v24    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .end local v27    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "now":J
    .restart local v1    # "now":J
    .restart local v5    # "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    .restart local v6    # "nb":I
    .restart local v7    # "cstats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    move-wide/from16 v37, v1

    const/4 v1, 0x0

    .line 487
    .end local v1    # "now":J
    .end local v8    # "i":I
    .restart local v37    # "now":J
    iget-object v2, v0, Lorg/jline/builtins/TTop;->display:Lorg/jline/utils/Display;

    invoke-virtual {v2, v3, v1}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    .line 488
    return-void
.end method

.method private handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 3
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 258
    iget-object v0, p0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    .line 259
    .local v0, "prevw":I
    iget-object v1, p0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    iget-object v2, p0, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 261
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 262
    iget-object v1, p0, Lorg/jline/builtins/TTop;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->clear()V

    .line 264
    :cond_0
    invoke-direct {p0}, Lorg/jline/builtins/TTop;->display()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 268
    :goto_0
    return-void
.end method

.method private static humanReadableByteCount(JZ)Ljava/lang/String;
    .locals 11
    .param p0, "bytes"    # J
    .param p2, "si"    # Z

    .line 582
    if-eqz p2, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    .line 583
    .local v0, "unit":I
    :goto_0
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 584
    :cond_1
    long-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 585
    .local v1, "exp":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string v3, "kMGTPE"

    goto :goto_1

    :cond_2
    const-string v3, "KMGTPE"

    :goto_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_2

    :cond_3
    const-string v3, "i"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "pre":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, p0

    int-to-double v7, v0

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "%.1f %sB"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private infos()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 271
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/management/RuntimeMXBean;->getUptime()J

    move-result-wide v1

    .line 272
    .local v1, "ctime":J
    iget-object v3, v0, Lorg/jline/builtins/TTop;->previous:Ljava/util/Map;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda21;

    invoke-direct {v5}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uptime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 273
    .local v3, "ptime":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 275
    .local v6, "delta":J
    :goto_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v8

    .line 276
    .local v8, "threadsBean":Ljava/lang/management/ThreadMXBean;
    const/4 v9, 0x0

    invoke-interface {v8, v9, v9}, Ljava/lang/management/ThreadMXBean;->dumpAllThreads(ZZ)[Ljava/lang/management/ThreadInfo;

    move-result-object v10

    .line 277
    .local v10, "infos":[Ljava/lang/management/ThreadInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v11, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;>;"
    array-length v12, v10

    :goto_1
    if-ge v9, v12, :cond_5

    aget-object v13, v10, v9

    .line 279
    .local v13, "ti":Ljava/lang/management/ThreadInfo;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v14, "t":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v4, "tid"

    invoke-interface {v14, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v4

    const-string v5, "state"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v8}, Ljava/lang/management/ThreadMXBean;->isThreadContentionMonitoringEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getBlockedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "blocked_time"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getBlockedCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "blocked_count"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getWaitedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "waited_time"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getWaitedCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "waited_count"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lock_name"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lock_owner_id"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lock_owner_name"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface {v8}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v8}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    invoke-virtual {v13}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v4

    .line 295
    .local v4, "tid":J
    invoke-interface {v8, v4, v5}, Ljava/lang/management/ThreadMXBean;->getThreadCpuTime(J)J

    move-result-wide v17

    .line 296
    .local v17, "t1":J
    iget-object v15, v0, Lorg/jline/builtins/TTop;->previous:Ljava/util/Map;

    move-wide/from16 v19, v1

    .end local v1    # "ctime":J
    .local v19, "ctime":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v15, "cpu_time"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 297
    .local v1, "t0":J
    move-object/from16 v21, v3

    .end local v3    # "ptime":Ljava/lang/Long;
    .local v21, "ptime":Ljava/lang/Long;
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-wide/16 v15, 0x0

    cmp-long v3, v6, v15

    const-wide v22, 0x412e848000000000L    # 1000000.0

    const-wide/16 v24, 0x0

    if-eqz v3, :cond_2

    move v3, v12

    move-object v15, v13

    .end local v13    # "ti":Ljava/lang/management/ThreadInfo;
    .local v15, "ti":Ljava/lang/management/ThreadInfo;
    sub-long v12, v17, v1

    long-to-double v12, v12

    move-wide/from16 v26, v1

    .end local v1    # "t0":J
    .local v26, "t0":J
    long-to-double v1, v6

    mul-double v1, v1, v22

    div-double/2addr v12, v1

    goto :goto_2

    .end local v15    # "ti":Ljava/lang/management/ThreadInfo;
    .end local v26    # "t0":J
    .restart local v1    # "t0":J
    .restart local v13    # "ti":Ljava/lang/management/ThreadInfo;
    :cond_2
    move-wide/from16 v26, v1

    move v3, v12

    move-object v15, v13

    .end local v1    # "t0":J
    .end local v13    # "ti":Ljava/lang/management/ThreadInfo;
    .restart local v15    # "ti":Ljava/lang/management/ThreadInfo;
    .restart local v26    # "t0":J
    move-wide/from16 v12, v24

    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "cpu_time_perc"

    invoke-interface {v14, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-interface {v8, v4, v5}, Ljava/lang/management/ThreadMXBean;->getThreadUserTime(J)J

    move-result-wide v1

    .line 301
    .end local v17    # "t1":J
    .local v1, "t1":J
    iget-object v12, v0, Lorg/jline/builtins/TTop;->previous:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "user_time"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 302
    .end local v26    # "t0":J
    .local v17, "t0":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    sub-long v12, v1, v17

    long-to-double v12, v12

    move-wide/from16 v26, v1

    .end local v1    # "t1":J
    .local v26, "t1":J
    long-to-double v0, v6

    mul-double v0, v0, v22

    div-double v24, v12, v0

    goto :goto_3

    .end local v26    # "t1":J
    .restart local v1    # "t1":J
    :cond_3
    move-wide/from16 v26, v1

    .end local v1    # "t1":J
    .restart local v26    # "t1":J
    :goto_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "user_time_perc"

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 292
    .end local v4    # "tid":J
    .end local v15    # "ti":Ljava/lang/management/ThreadInfo;
    .end local v17    # "t0":J
    .end local v19    # "ctime":J
    .end local v21    # "ptime":Ljava/lang/Long;
    .end local v26    # "t1":J
    .local v1, "ctime":J
    .restart local v3    # "ptime":Ljava/lang/Long;
    .restart local v13    # "ti":Ljava/lang/management/ThreadInfo;
    :cond_4
    move-wide/from16 v19, v1

    move-object/from16 v21, v3

    move v3, v12

    move-object v15, v13

    .line 305
    .end local v1    # "ctime":J
    .end local v3    # "ptime":Ljava/lang/Long;
    .end local v13    # "ti":Ljava/lang/management/ThreadInfo;
    .restart local v15    # "ti":Ljava/lang/management/ThreadInfo;
    .restart local v19    # "ctime":J
    .restart local v21    # "ptime":Ljava/lang/Long;
    :goto_4
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v14    # "t":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Comparable<*>;>;"
    .end local v15    # "ti":Ljava/lang/management/ThreadInfo;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move v12, v3

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 307
    .end local v19    # "ctime":J
    .end local v21    # "ptime":Ljava/lang/Long;
    .restart local v1    # "ctime":J
    .restart local v3    # "ptime":Ljava/lang/Long;
    :cond_5
    return-object v11
.end method

.method static synthetic lambda$buildComparator$17(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "fkey"    # Ljava/lang/String;
    .param p1, "m"    # Ljava/util/Map;

    .line 512
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic lambda$display$13(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .line 425
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$display$14(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$display$15(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$display$16(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$infos$10(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$infos$8(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$infos$9(Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%3d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 126
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jline/builtins/TTop;->millis(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$3(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 128
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jline/builtins/TTop;->millis(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$4(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/Object;

    .line 131
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$new$5(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/Object;

    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$new$6(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 133
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jline/builtins/TTop;->nanos(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$7(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 134
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jline/builtins/TTop;->nanos(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$padcut$18(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "nb"    # I
    .param p1, "o"    # Ljava/lang/Object;

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jline/builtins/TTop;->padcut(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static memory(JJ)Ljava/lang/String;
    .locals 5
    .param p0, "cur"    # J
    .param p2, "max"    # J

    .line 567
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 568
    invoke-static {p2, p3, v1}, Lorg/jline/builtins/TTop;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "smax":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lorg/jline/builtins/TTop;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "cmax":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 571
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 572
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 577
    .end local v0    # "smax":Ljava/lang/String;
    .end local v1    # "cmax":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {p0, p1, v1}, Lorg/jline/builtins/TTop;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static millis(J)Ljava/lang/String;
    .locals 13
    .param p0, "millis"    # J

    .line 534
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 535
    .local v2, "secs":J
    rem-long/2addr p0, v0

    .line 536
    const-wide/16 v0, 0x3c

    div-long v4, v2, v0

    .line 537
    .local v4, "mins":J
    rem-long/2addr v2, v0

    .line 538
    div-long v6, v4, v0

    .line 539
    .local v6, "hours":J
    rem-long/2addr v4, v0

    .line 540
    const-wide/16 v0, 0x0

    cmp-long v8, v6, v0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v8, :cond_0

    .line 541
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "%d:%02d:%02d.%03d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_0
    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 543
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "%d:%02d.%03d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 545
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "%d.%03d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static nanos(J)Ljava/lang/String;
    .locals 2
    .param p0, "nanos"    # J

    .line 530
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    invoke-static {v0, v1}, Lorg/jline/builtins/TTop;->millis(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padcut(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "nb"    # I

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 556
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 560
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x3

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static padcut(I)Ljava/util/function/Function;
    .locals 1
    .param p0, "nb"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda11;-><init>(I)V

    return-object v0
.end method

.method private register(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "align"    # Lorg/jline/builtins/TTop$Align;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jline/builtins/TTop$Align;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p4, "format":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    new-instance v1, Lorg/jline/builtins/TTop$Column;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jline/builtins/TTop$Column;-><init>(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public static ttop(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 8
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const-string v0, "ttop -  display and update sorted information about threads"

    const-string v1, "Usage: ttop [OPTIONS]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -o --order=ORDER             Comma separated list of sorting keys"

    const-string v4, "  -t --stats=STATS             Comma separated list of stats to display"

    const-string v5, "  -s --seconds=SECONDS         Delay between updates in seconds"

    const-string v6, "  -m --millis=MILLIS           Delay between updates in milliseconds"

    const-string v7, "  -n --nthreads=NTHREADS       Only display up to NTHREADS threads"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 87
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 90
    new-instance v2, Lorg/jline/builtins/TTop;

    invoke-direct {v2, p0}, Lorg/jline/builtins/TTop;-><init>(Lorg/jline/terminal/Terminal;)V

    .line 91
    .local v2, "ttop":Lorg/jline/builtins/TTop;
    const-string v3, "order"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ","

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    iput-object v3, v2, Lorg/jline/builtins/TTop;->sort:Ljava/util/List;

    .line 92
    const-string v3, "seconds"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lorg/jline/builtins/TTop;->delay:J

    :goto_1
    iput-wide v3, v2, Lorg/jline/builtins/TTop;->delay:J

    .line 93
    const-string v3, "millis"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    goto :goto_2

    :cond_2
    iget-wide v3, v2, Lorg/jline/builtins/TTop;->delay:J

    :goto_2
    iput-wide v3, v2, Lorg/jline/builtins/TTop;->delay:J

    .line 94
    const-string v3, "stats"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_3
    iput-object v6, v2, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 95
    const-string v3, "nthreads"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_4
    iget v3, v2, Lorg/jline/builtins/TTop;->nthreads:I

    :goto_3
    iput v3, v2, Lorg/jline/builtins/TTop;->nthreads:I

    .line 96
    invoke-virtual {v2}, Lorg/jline/builtins/TTop;->run()V

    .line 97
    return-void

    .line 88
    .end local v2    # "ttop":Lorg/jline/builtins/TTop;
    :cond_5
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getKeys()Lorg/jline/keymap/KeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/TTop$Operation;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/jline/builtins/TTop;->keys:Lorg/jline/keymap/KeyMap;

    return-object v0
.end method

.method synthetic lambda$display$11$org-jline-builtins-TTop(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "thread"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lorg/jline/builtins/TTop;->columns:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/TTop$Column;

    iget-object v0, v0, Lorg/jline/builtins/TTop$Column;->format:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$display$12$org-jline-builtins-TTop(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1, "thread"    # Ljava/util/Map;

    .line 420
    iget-object v0, p0, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 419
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 421
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;-><init>(Lorg/jline/builtins/TTop;Ljava/util/Map;)V

    .line 420
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public run()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jline/builtins/TTop;->sort:Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/jline/builtins/TTop;->buildComparator(Ljava/util/List;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, v1, Lorg/jline/builtins/TTop;->comparator:Ljava/util/Comparator;

    .line 148
    iget-wide v2, v1, Lorg/jline/builtins/TTop;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-wide/16 v4, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    :goto_0
    iput-wide v2, v1, Lorg/jline/builtins/TTop;->delay:J

    .line 149
    iget-object v0, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    const-string v2, "cpu_time"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "tid"

    const-string v4, "name"

    const-string v5, "state"

    const-string v6, "lock_owner_id"

    filled-new-array {v3, v4, v5, v2, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 153
    :cond_2
    const/4 v0, 0x0

    .line 154
    .local v0, "isThreadContentionMonitoringEnabled":Ljava/lang/Boolean;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v3

    .line 155
    .local v3, "threadsBean":Ljava/lang/management/ThreadMXBean;
    iget-object v4, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    const-string v5, "blocked_time"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "waited_count"

    const-string v7, "waited_time"

    const-string v8, "blocked_count"

    const/4 v9, 0x1

    if-nez v4, :cond_3

    iget-object v4, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 156
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 157
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    .line 158
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    :cond_3
    invoke-interface {v3}, Ljava/lang/management/ThreadMXBean;->isThreadContentionMonitoringSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    invoke-interface {v3}, Ljava/lang/management/ThreadMXBean;->isThreadContentionMonitoringEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 162
    invoke-interface {v3, v9}, Ljava/lang/management/ThreadMXBean;->setThreadContentionMonitoringEnabled(Z)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v4, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    filled-new-array {v5, v8, v7, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 168
    :cond_5
    :goto_1
    move-object v4, v0

    .end local v0    # "isThreadContentionMonitoringEnabled":Ljava/lang/Boolean;
    .local v4, "isThreadContentionMonitoringEnabled":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 169
    .local v0, "isThreadCpuTimeEnabled":Ljava/lang/Boolean;
    iget-object v5, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    const-string v6, "user_time"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 170
    :cond_6
    invoke-interface {v3}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    invoke-interface {v3}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 173
    invoke-interface {v3, v9}, Ljava/lang/management/ThreadMXBean;->setThreadCpuTimeEnabled(Z)V

    goto :goto_2

    .line 176
    :cond_7
    iget-object v5, v1, Lorg/jline/builtins/TTop;->stats:Ljava/util/List;

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 180
    :cond_8
    :goto_2
    move-object v2, v0

    .end local v0    # "isThreadCpuTimeEnabled":Ljava/lang/Boolean;
    .local v2, "isThreadCpuTimeEnabled":Ljava/lang/Boolean;
    iget-object v0, v1, Lorg/jline/builtins/TTop;->size:Lorg/jline/terminal/Size;

    iget-object v5, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 181
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v6, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/TTop;)V

    invoke-interface {v0, v5, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v5

    .line 182
    .local v5, "prevHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    move-result-object v6

    .line 186
    .local v6, "attr":Lorg/jline/terminal/Attributes;
    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->enter_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v0, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 187
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v0, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 189
    :cond_9
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v0, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 190
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->cursor_invisible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v0, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 191
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 197
    .local v10, "t0":J
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/TTop;->display()V

    .line 198
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/TTop;->checkInterrupted()V

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "op":Lorg/jline/builtins/TTop$Operation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    iget-wide v14, v1, Lorg/jline/builtins/TTop;->delay:J

    div-long/2addr v12, v14

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    mul-long/2addr v12, v14

    add-long/2addr v12, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 203
    .local v12, "delta":J
    iget-object v8, v1, Lorg/jline/builtins/TTop;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v8, v12, v13}, Lorg/jline/keymap/BindingReader;->peekCharacter(J)I

    move-result v8

    .line 204
    .local v8, "ch":I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_a

    .line 205
    sget-object v14, Lorg/jline/builtins/TTop$Operation;->EXIT:Lorg/jline/builtins/TTop$Operation;

    move-object v0, v14

    goto :goto_4

    .line 206
    :cond_a
    const/4 v14, -0x2

    if-eq v8, v14, :cond_b

    .line 207
    iget-object v14, v1, Lorg/jline/builtins/TTop;->bindingReader:Lorg/jline/keymap/BindingReader;

    iget-object v15, v1, Lorg/jline/builtins/TTop;->keys:Lorg/jline/keymap/KeyMap;

    const/4 v9, 0x0

    invoke-virtual {v14, v15, v9, v7}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/builtins/TTop$Operation;

    move-object v0, v9

    .line 209
    :cond_b
    :goto_4
    if-nez v0, :cond_c

    .line 210
    goto :goto_5

    .line 213
    :cond_c
    sget-object v9, Lorg/jline/builtins/TTop$1;->$SwitchMap$org$jline$builtins$TTop$Operation:[I

    invoke-virtual {v0}, Lorg/jline/builtins/TTop$Operation;->ordinal()I

    move-result v14

    aget v9, v9, v14

    const-wide/16 v14, 0x2

    packed-switch v9, :pswitch_data_0

    move/from16 v17, v8

    .end local v8    # "ch":I
    .local v17, "ch":I
    goto :goto_5

    .line 226
    .end local v17    # "ch":I
    .restart local v8    # "ch":I
    :pswitch_0
    iget-object v9, v1, Lorg/jline/builtins/TTop;->comparator:Ljava/util/Comparator;

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    iput-object v9, v1, Lorg/jline/builtins/TTop;->comparator:Ljava/util/Comparator;

    goto :goto_5

    .line 223
    :pswitch_1
    iget-object v9, v1, Lorg/jline/builtins/TTop;->display:Lorg/jline/utils/Display;

    invoke-virtual {v9}, Lorg/jline/utils/Display;->clear()V

    .line 224
    goto :goto_5

    .line 219
    :pswitch_2
    move/from16 v17, v8

    .end local v8    # "ch":I
    .restart local v17    # "ch":I
    iget-wide v7, v1, Lorg/jline/builtins/TTop;->delay:J

    div-long/2addr v7, v14

    const-wide/16 v14, 0x10

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lorg/jline/builtins/TTop;->delay:J

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 221
    .end local v10    # "t0":J
    .local v7, "t0":J
    move-wide v10, v7

    goto :goto_5

    .line 215
    .end local v7    # "t0":J
    .end local v17    # "ch":I
    .restart local v8    # "ch":I
    .restart local v10    # "t0":J
    :pswitch_3
    move/from16 v17, v8

    .end local v8    # "ch":I
    .restart local v17    # "ch":I
    iget-wide v7, v1, Lorg/jline/builtins/TTop;->delay:J

    mul-long/2addr v7, v14

    iput-wide v7, v1, Lorg/jline/builtins/TTop;->delay:J

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 217
    .end local v10    # "t0":J
    .restart local v7    # "t0":J
    move-wide v10, v7

    .line 229
    .end local v7    # "t0":J
    .end local v12    # "delta":J
    .end local v17    # "ch":I
    .restart local v10    # "t0":J
    :goto_5
    sget-object v7, Lorg/jline/builtins/TTop$Operation;->EXIT:Lorg/jline/builtins/TTop$Operation;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v7, :cond_10

    .line 236
    .end local v0    # "op":Lorg/jline/builtins/TTop$Operation;
    .end local v10    # "t0":J
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0, v6}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 237
    if-eqz v5, :cond_d

    .line 238
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v0, v7, v5}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 241
    :cond_d
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 242
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 244
    :cond_e
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 245
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 246
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 248
    if-eqz v4, :cond_f

    .line 249
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Ljava/lang/management/ThreadMXBean;->setThreadContentionMonitoringEnabled(Z)V

    .line 251
    :cond_f
    if-eqz v2, :cond_1c

    .line 252
    goto/16 :goto_7

    .line 229
    .restart local v0    # "op":Lorg/jline/builtins/TTop$Operation;
    .restart local v10    # "t0":J
    :cond_10
    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 236
    .end local v0    # "op":Lorg/jline/builtins/TTop$Operation;
    .end local v10    # "t0":J
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "err":Ljava/lang/Error;
    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Error: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v7}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v7, v6}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 237
    if-eqz v5, :cond_11

    .line 238
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v7, v8, v5}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 241
    :cond_11
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 242
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 244
    :cond_12
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 245
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 246
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v7}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 248
    if-eqz v4, :cond_13

    .line 249
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Ljava/lang/management/ThreadMXBean;->setThreadContentionMonitoringEnabled(Z)V

    .line 251
    :cond_13
    if-eqz v2, :cond_14

    .line 252
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Ljava/lang/management/ThreadMXBean;->setThreadCpuTimeEnabled(Z)V

    .line 234
    :cond_14
    return-void

    .line 236
    .end local v0    # "err":Ljava/lang/Error;
    :goto_6
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v7, v6}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 237
    if-eqz v5, :cond_15

    .line 238
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v7, v8, v5}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 241
    :cond_15
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 242
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 244
    :cond_16
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 245
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 246
    iget-object v7, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v7}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 248
    if-eqz v4, :cond_17

    .line 249
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Ljava/lang/management/ThreadMXBean;->setThreadContentionMonitoringEnabled(Z)V

    .line 251
    :cond_17
    if-eqz v2, :cond_18

    .line 252
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Ljava/lang/management/ThreadMXBean;->setThreadCpuTimeEnabled(Z)V

    .line 254
    :cond_18
    throw v0

    .line 230
    :catch_1
    move-exception v0

    .line 236
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0, v6}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 237
    if-eqz v5, :cond_19

    .line 238
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v0, v7, v5}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 241
    :cond_19
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 242
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 244
    :cond_1a
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 245
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 246
    iget-object v0, v1, Lorg/jline/builtins/TTop;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 248
    if-eqz v4, :cond_1b

    .line 249
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Ljava/lang/management/ThreadMXBean;->setThreadContentionMonitoringEnabled(Z)V

    .line 251
    :cond_1b
    if-eqz v2, :cond_1c

    .line 252
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Ljava/lang/management/ThreadMXBean;->setThreadCpuTimeEnabled(Z)V

    .line 255
    :cond_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
