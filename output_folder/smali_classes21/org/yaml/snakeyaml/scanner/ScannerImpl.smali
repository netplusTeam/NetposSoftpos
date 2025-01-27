.class public final Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.super Ljava/lang/Object;
.source "ScannerImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/scanner/Scanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    }
.end annotation


# static fields
.field public static final ESCAPE_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_HEXA:Ljava/util/regex/Pattern;


# instance fields
.field private allowSimpleKey:Z

.field private done:Z

.field private flowLevel:I

.field private indent:I

.field private indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private possibleSimpleKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/yaml/snakeyaml/scanner/SimpleKey;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lorg/yaml/snakeyaml/reader/StreamReader;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokensTaken:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    const-string v0, "[^0-9A-Fa-f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    .line 119
    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0007"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0008"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\t"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\n"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u000b"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u000c"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\r"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u001b"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, " "

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\\"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u0085"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u00a0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u2028"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "\u2029"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 164
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 170
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 214
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    .line 216
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 218
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    .line 219
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamStart()V

    .line 220
    return-void
.end method

.method private addIndent(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 558
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-ge v0, p1, :cond_0

    .line 559
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 560
    iput p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 561
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkBlockEntry()Z
    .locals 3

    .line 1094
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private checkDirective()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDocumentEnd()Z
    .locals 3

    .line 1081
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x1

    return v0

    .line 1086
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkDocumentStart()Z
    .locals 3

    .line 1067
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "---"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    return v0

    .line 1072
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkKey()Z
    .locals 3

    .line 1102
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1103
    return v1

    .line 1106
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private checkPlain()Z
    .locals 4

    .line 1143
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1146
    .local v0, "c":I
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v2, "-?:,[]{}#&*!|>\'\"%@`"

    invoke-virtual {v1, v0, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1147
    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_0

    .line 1148
    const-string v1, "?:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 1146
    :goto_1
    return v2
.end method

.method private checkValue()Z
    .locals 3

    .line 1115
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1116
    return v1

    .line 1119
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private fetchAlias()V
    .locals 2

    .line 910
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 916
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 917
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    return-void
.end method

.method private fetchAnchor()V
    .locals 2

    .line 931
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 937
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 938
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    return-void
.end method

.method private fetchBlockEntry()V
    .locals 4

    .line 773
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 775
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 783
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 777
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sequence entries are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 790
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 793
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 796
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 797
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 798
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 799
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 800
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method private fetchBlockScalar(C)V
    .locals 2
    .param p1, "style"    # C

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 991
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 994
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 995
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    return-void
.end method

.method private fetchDirective()V
    .locals 2

    .line 610
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 613
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 617
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirective()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 618
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method private fetchDocumentEnd()V
    .locals 1

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 633
    return-void
.end method

.method private fetchDocumentIndicator(Z)V
    .locals 4
    .param p1, "isDocumentStart"    # Z

    .line 641
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 645
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 649
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 650
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 651
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 653
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 654
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 656
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 658
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private fetchDocumentStart()V
    .locals 1

    .line 625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 626
    return-void
.end method

.method private fetchDouble()V
    .locals 1

    .line 1009
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1010
    return-void
.end method

.method private fetchFlowCollectionEnd(Z)V
    .locals 4
    .param p1, "isMappingEnd"    # Z

    .line 724
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 727
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 733
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 734
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 735
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 737
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 738
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 740
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 742
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    return-void
.end method

.method private fetchFlowCollectionStart(Z)V
    .locals 4
    .param p1, "isMappingStart"    # Z

    .line 683
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 686
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 689
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 692
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 693
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 694
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 696
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 697
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 699
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 701
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method private fetchFlowEntry()V
    .locals 4

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 756
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 759
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 760
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 761
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 762
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 763
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method private fetchFlowMappingEnd()V
    .locals 1

    .line 709
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 710
    return-void
.end method

.method private fetchFlowMappingStart()V
    .locals 1

    .line 666
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 667
    return-void
.end method

.method private fetchFlowScalar(C)V
    .locals 2
    .param p1, "style"    # C

    .line 1021
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1027
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1028
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    return-void
.end method

.method private fetchFlowSequenceEnd()V
    .locals 1

    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 706
    return-void
.end method

.method private fetchFlowSequenceStart()V
    .locals 1

    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 663
    return-void
.end method

.method private fetchFolded()V
    .locals 1

    .line 976
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 977
    return-void
.end method

.method private fetchKey()V
    .locals 4

    .line 810
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 812
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 819
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 813
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 814
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mapping keys are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 823
    :cond_1
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 826
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 829
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 830
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 831
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 832
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 833
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method private fetchLiteral()V
    .locals 1

    .line 966
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 967
    return-void
.end method

.method private fetchMoreTokens()V
    .locals 7

    .line 287
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanToNextToken()V

    .line 289
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 292
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 295
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 296
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 341
    :sswitch_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingEnd()V

    .line 342
    return-void

    .line 376
    :sswitch_1
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 377
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchLiteral()V

    .line 378
    return-void

    .line 333
    :sswitch_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingStart()V

    .line 334
    return-void

    .line 337
    :sswitch_3
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceEnd()V

    .line 338
    return-void

    .line 329
    :sswitch_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceStart()V

    .line 330
    return-void

    .line 350
    :sswitch_5
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchKey()V

    .line 352
    return-void

    .line 383
    :sswitch_6
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 384
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFolded()V

    .line 385
    return-void

    .line 357
    :sswitch_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchValue()V

    .line 359
    return-void

    .line 321
    :sswitch_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentEnd()V

    .line 323
    return-void

    .line 310
    :sswitch_9
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentStart()V

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkBlockEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockEntry()V

    .line 316
    return-void

    .line 345
    :sswitch_a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowEntry()V

    .line 346
    return-void

    .line 364
    :sswitch_b
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAlias()V

    .line 365
    return-void

    .line 390
    :sswitch_c
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchSingle()V

    .line 391
    return-void

    .line 368
    :sswitch_d
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAnchor()V

    .line 369
    return-void

    .line 303
    :sswitch_e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDirective()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDirective()V

    .line 305
    return-void

    .line 394
    :sswitch_f
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDouble()V

    .line 395
    return-void

    .line 372
    :sswitch_10
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchTag()V

    .line 373
    return-void

    .line 299
    :sswitch_11
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamEnd()V

    .line 300
    return-void

    .line 398
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkPlain()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchPlain()V

    .line 400
    return-void

    .line 405
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "chRepresentation":Ljava/lang/String;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 407
    .local v3, "s":Ljava/lang/Character;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    goto :goto_2

    .line 412
    .end local v3    # "s":Ljava/lang/Character;
    .end local v4    # "v":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 413
    :cond_4
    :goto_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(TAB)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 416
    const-string v3, "found character \'%s\' that cannot start any token. (Do not use %s for indentation)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 419
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning for the next token"

    invoke-direct {v3, v6, v4, v2, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x21 -> :sswitch_10
        0x22 -> :sswitch_f
        0x25 -> :sswitch_e
        0x26 -> :sswitch_d
        0x27 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2c -> :sswitch_a
        0x2d -> :sswitch_9
        0x2e -> :sswitch_8
        0x3a -> :sswitch_7
        0x3e -> :sswitch_6
        0x3f -> :sswitch_5
        0x5b -> :sswitch_4
        0x5d -> :sswitch_3
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private fetchPlain()V
    .locals 2

    .line 1036
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1044
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlain()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1045
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method private fetchSingle()V
    .locals 1

    .line 1002
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1003
    return-void
.end method

.method private fetchStreamEnd()V
    .locals 3

    .line 583
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 586
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 588
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 591
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 594
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 595
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 599
    return-void
.end method

.method private fetchStreamStart()V
    .locals 3

    .line 574
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 577
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 578
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method private fetchTag()V
    .locals 2

    .line 948
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 954
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTag()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 955
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    return-void
.end method

.method private fetchValue()V
    .locals 7

    .line 843
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 844
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 846
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 847
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 846
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 851
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_0

    .line 852
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    .line 854
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 853
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 858
    :cond_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_1

    .line 864
    :cond_1
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_3

    .line 868
    iget-boolean v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 869
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 870
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mapping values are not allowed here"

    invoke-direct {v1, v3, v3, v4, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 877
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 878
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 879
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 880
    .local v2, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v4, v2, v2}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    .end local v2    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_4
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 888
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 891
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 892
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 893
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 894
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v3, Lorg/yaml/snakeyaml/tokens/ValueToken;

    invoke-direct {v3, v1, v2}, Lorg/yaml/snakeyaml/tokens/ValueToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 895
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    return-void
.end method

.method private needMoreTokens()Z
    .locals 4

    .line 269
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 274
    return v2

    .line 278
    :cond_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 279
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->nextPossibleSimpleKey()I

    move-result v0

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private nextPossibleSimpleKey()I
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v0

    return v0

    .line 436
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private removePossibleSimpleKey()V
    .locals 6

    .line 510
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 511
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 513
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a simple key"

    const-string v5, "could not find expected \':\'"

    invoke-direct {v1, v4, v2, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 515
    :cond_1
    :goto_0
    return-void
.end method

.method private savePossibleSimpleKey()V
    .locals 10

    .line 485
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    .local v0, "required":Z
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 491
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "A simple key is required only if it is the first token in the current line"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 498
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 499
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v8, v1, v2

    .line 500
    .local v8, "tokenNumber":I
    new-instance v9, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v4

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 501
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v5

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    move-object v1, v9

    move v2, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/scanner/SimpleKey;-><init>(IZIIILorg/yaml/snakeyaml/error/Mark;)V

    .line 502
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    .end local v8    # "tokenNumber":I
    :cond_3
    return-void
.end method

.method private scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 13
    .param p1, "isAnchor"    # Z

    .line 1418
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1419
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1420
    .local v1, "indicator":I
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const-string v2, "alias"

    goto :goto_0

    :cond_0
    const-string v2, "anchor"

    .line 1421
    .local v2, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1422
    const/4 v3, 0x0

    .line 1423
    .local v3, "length":I
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    .line 1426
    .local v4, "c":I
    :goto_1
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v6, ":,[]{}"

    invoke-virtual {v5, v4, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1427
    add-int/lit8 v3, v3, 0x1

    .line 1428
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    goto :goto_1

    .line 1430
    :cond_1
    const-string v5, ")"

    const-string v6, "("

    const-string v7, "unexpected character found "

    const-string v8, "while scanning an "

    if-eqz v3, :cond_4

    .line 1435
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v9

    .line 1436
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    .line 1437
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v11, "?:,]}%@`"

    invoke-virtual {v10, v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1442
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1444
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_2

    .line 1445
    new-instance v6, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    invoke-direct {v6, v9, v0, v5}, Lorg/yaml/snakeyaml/tokens/AnchorToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v6, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_2

    .line 1447
    .end local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_2
    new-instance v6, Lorg/yaml/snakeyaml/tokens/AliasToken;

    invoke-direct {v6, v9, v0, v5}, Lorg/yaml/snakeyaml/tokens/AliasToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1449
    .restart local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_2
    return-object v6

    .line 1438
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    .line 1439
    .local v10, "s":Ljava/lang/String;
    new-instance v11, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1440
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v11, v8, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v11

    .line 1431
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    .line 1432
    .local v9, "s":Ljava/lang/String;
    new-instance v10, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1433
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v10, v8, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v10
.end method

.method private scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 20
    .param p1, "style"    # C

    .line 1557
    move-object/from16 v0, p0

    const/16 v1, 0x3e

    move/from16 v2, p1

    if-ne v2, v1, :cond_0

    .line 1558
    const/4 v1, 0x1

    .local v1, "folded":Z
    goto :goto_0

    .line 1560
    .end local v1    # "folded":Z
    :cond_0
    const/4 v1, 0x0

    .line 1562
    .restart local v1    # "folded":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1563
    .local v3, "chunks":Ljava/lang/StringBuilder;
    iget-object v4, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    .line 1565
    .local v4, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v5, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1566
    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    move-result-object v11

    .line 1567
    .local v11, "chompi":Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->getIncrement()I

    move-result v12

    .line 1568
    .local v12, "increment":I
    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    .line 1571
    iget v5, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1572
    .local v5, "minIndent":I
    if-ge v5, v6, :cond_1

    .line 1573
    const/4 v5, 0x1

    move v13, v5

    goto :goto_1

    .line 1572
    :cond_1
    move v13, v5

    .line 1579
    .end local v5    # "minIndent":I
    .local v13, "minIndent":I
    :goto_1
    const/4 v5, -0x1

    const/4 v7, 0x0

    if-ne v12, v5, :cond_2

    .line 1580
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndentation()[Ljava/lang/Object;

    move-result-object v8

    .line 1581
    .local v8, "brme":[Ljava/lang/Object;
    aget-object v9, v8, v7

    check-cast v9, Ljava/lang/String;

    .line 1582
    .local v9, "breaks":Ljava/lang/String;
    aget-object v10, v8, v6

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1583
    .local v10, "maxIndent":I
    const/4 v14, 0x2

    aget-object v14, v8, v14

    check-cast v14, Lorg/yaml/snakeyaml/error/Mark;

    .line 1584
    .local v14, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1585
    .local v8, "indent":I
    move-object/from16 v19, v14

    move v14, v8

    move-object/from16 v8, v19

    goto :goto_2

    .line 1586
    .end local v8    # "indent":I
    .end local v9    # "breaks":Ljava/lang/String;
    .end local v10    # "maxIndent":I
    .end local v14    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_2
    add-int v8, v13, v12

    sub-int/2addr v8, v6

    .line 1587
    .restart local v8    # "indent":I
    invoke-direct {v0, v8}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v9

    .line 1588
    .local v9, "brme":[Ljava/lang/Object;
    aget-object v10, v9, v7

    check-cast v10, Ljava/lang/String;

    .line 1589
    .local v10, "breaks":Ljava/lang/String;
    aget-object v14, v9, v6

    check-cast v14, Lorg/yaml/snakeyaml/error/Mark;

    move-object v9, v10

    move-object/from16 v19, v14

    move v14, v8

    move-object/from16 v8, v19

    .line 1592
    .end local v10    # "breaks":Ljava/lang/String;
    .local v8, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v9, "breaks":Ljava/lang/String;
    .local v14, "indent":I
    :goto_2
    const-string v10, ""

    .line 1595
    .local v10, "lineBreak":Ljava/lang/String;
    :goto_3
    iget-object v15, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v15

    if-ne v15, v14, :cond_8

    iget-object v15, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v15

    if-eqz v15, :cond_8

    .line 1596
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    iget-object v15, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v15

    const-string v6, " \t"

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ne v15, v5, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    move v15, v7

    .line 1598
    .local v15, "leadingNonSpace":Z
    :goto_4
    const/16 v17, 0x0

    move/from16 v5, v17

    .line 1599
    .local v5, "length":I
    :goto_5
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1600
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p1

    const/4 v7, 0x0

    goto :goto_5

    .line 1602
    :cond_4
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v10

    .line 1604
    invoke-direct {v0, v14}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1605
    .local v2, "brme":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v17, v2, v7

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    .line 1606
    const/16 v16, 0x1

    aget-object v17, v2, v16

    move-object/from16 v8, v17

    check-cast v8, Lorg/yaml/snakeyaml/error/Mark;

    .line 1607
    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v7

    if-ne v7, v14, :cond_8

    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1612
    if-eqz v1, :cond_5

    const-string v7, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v15, :cond_5

    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1613
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 1614
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 1615
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1612
    :cond_5
    const/4 v7, -0x1

    .line 1618
    :cond_6
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    .end local v2    # "brme":[Ljava/lang/Object;
    .end local v5    # "length":I
    .end local v15    # "leadingNonSpace":Z
    :cond_7
    :goto_6
    move/from16 v2, p1

    move v5, v7

    move/from16 v6, v16

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1627
    :cond_8
    move-object v2, v8

    move-object v15, v9

    .end local v8    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v9    # "breaks":Ljava/lang/String;
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v15, "breaks":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsNotFalse()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1628
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    :cond_9
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsTrue()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1631
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :cond_a
    new-instance v16, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v5}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v17

    move-object/from16 v5, v16

    move-object v8, v4

    move-object v9, v2

    move-object/from16 v18, v10

    .end local v10    # "lineBreak":Ljava/lang/String;
    .local v18, "lineBreak":Ljava/lang/String;
    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    return-object v16
.end method

.method private scanBlockScalarBreaks(I)[Ljava/lang/Object;
    .locals 7
    .param p1, "indent"    # I

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1774
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    .line 1777
    .local v2, "col":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, p1, :cond_0

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1778
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1784
    :cond_0
    const/4 v4, 0x0

    .line 1785
    .local v4, "lineBreak":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1786
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1790
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    .line 1791
    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1792
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1793
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1797
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v1, v3, v5

    return-object v3
.end method

.method private scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1712
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1713
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1717
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1718
    :goto_1
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1724
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1725
    .local v0, "c":I
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v1

    .line 1726
    .local v1, "lineBreak":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 1727
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1728
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1730
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a block scalar"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1732
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v1
.end method

.method private scanBlockScalarIndentation()[Ljava/lang/Object;
    .locals 6

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1746
    .local v1, "maxIndent":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1750
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    const-string v5, " \r"

    invoke-virtual {v3, v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1751
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 1754
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_0

    .line 1760
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1761
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1762
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    goto :goto_0

    .line 1767
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    return-object v3
.end method

.method private scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1654
    const/4 v0, 0x0

    .line 1655
    .local v0, "chomping":Ljava/lang/Boolean;
    const/4 v1, -0x1

    .line 1656
    .local v1, "increment":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1657
    .local v2, "c":I
    const-string v3, "expected indentation indicator in the range 1-9, but found 0"

    const/16 v4, 0x2d

    const-string v5, "while scanning a block scalar"

    const/16 v6, 0x2b

    if-eq v2, v4, :cond_4

    if-ne v2, v6, :cond_0

    goto :goto_1

    .line 1675
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1676
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1677
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1678
    if-eqz v1, :cond_3

    .line 1683
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1684
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1685
    if-eq v2, v4, :cond_1

    if-ne v2, v6, :cond_7

    .line 1686
    :cond_1
    if-ne v2, v6, :cond_2

    .line 1687
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1689
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1691
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1679
    :cond_3
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1681
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, p1, v3, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1658
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v2, v6, :cond_5

    .line 1659
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 1661
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1663
    :goto_2
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1664
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1665
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1666
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 1667
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1668
    if-eqz v1, :cond_6

    .line 1673
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1674
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_3

    .line 1669
    .restart local v4    # "s":Ljava/lang/String;
    :cond_6
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1671
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v6, v5, p1, v3, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6

    .line 1694
    .end local v4    # "s":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1695
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1701
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    invoke-direct {v3, v0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;-><init>(Ljava/lang/Boolean;I)V

    return-object v3

    .line 1696
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected chomping or indentation indicators, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1699
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v4, v5, p1, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanDirective()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 7

    .line 1221
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1223
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1224
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1226
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v3, "YAML"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1227
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1228
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .local v3, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_1

    .line 1229
    .end local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    const-string v3, "TAG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1230
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1231
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .restart local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_1

    .line 1233
    .end local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 1234
    .restart local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v4, 0x0

    .line 1235
    .local v4, "ff":I
    :goto_0
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1236
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1238
    :cond_2
    if-lez v4, :cond_3

    .line 1239
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1242
    .end local v4    # "ff":I
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1243
    new-instance v4, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    invoke-direct {v4, v1, v2, v0, v3}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v4
.end method

.method private scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1399
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1400
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1403
    :goto_1
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1407
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1408
    .local v0, "c":I
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "lineBreak":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 1410
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1413
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1415
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method private scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 10
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1254
    const/4 v0, 0x0

    .line 1258
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    .line 1259
    .local v1, "c":I
    :goto_0
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    add-int/lit8 v0, v0, 0x1

    .line 1261
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    goto :goto_0

    .line 1264
    :cond_0
    const-string v2, ")"

    const-string v3, "("

    const-string v4, "expected alphabetic or numeric character, but found "

    const-string v5, "while scanning a directive"

    if-eqz v0, :cond_2

    .line 1270
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v6

    .line 1271
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1272
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1278
    return-object v6

    .line 1273
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1274
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1276
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-direct {v8, v5, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8

    .line 1265
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1268
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-direct {v7, v5, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7
.end method

.method private scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 12
    .param p1, "style"    # C

    .line 1820
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 1821
    const/4 v0, 0x1

    .local v0, "_double":Z
    goto :goto_0

    .line 1823
    .end local v0    # "_double":Z
    :cond_0
    const/4 v0, 0x0

    .line 1825
    .restart local v0    # "_double":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1826
    .local v1, "chunks":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1827
    .local v2, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v9

    .line 1828
    .local v9, "quote":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1829
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 1831
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1834
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1835
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    .line 1836
    .local v10, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v11, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v8

    move-object v3, v11

    move-object v6, v2

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    return-object v11
.end method

.method private scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    .line 1942
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "---"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "..."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1943
    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1948
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    const-string v3, " \t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1949
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1953
    :cond_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1954
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1955
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "lineBreak":Ljava/lang/String;
    goto :goto_0

    .line 1957
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v2    # "lineBreak":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1944
    .end local v2    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1945
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a quoted scalar"

    const-string v5, "found unexpected document separator"

    invoke-direct {v2, v4, p1, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "doubleQuoted"    # Z
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1848
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    .line 1849
    .local v1, "length":I
    :goto_1
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    const-string v4, "\'\"\\"

    invoke-virtual {v2, v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1850
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1852
    :cond_0
    if-eqz v1, :cond_1

    .line 1853
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    :cond_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1858
    .local v2, "c":I
    const/16 v3, 0x27

    if-nez p1, :cond_2

    if-ne v2, v3, :cond_2

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1859
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto/16 :goto_2

    .line 1861
    :cond_2
    if-eqz p1, :cond_3

    if-eq v2, v3, :cond_4

    :cond_3
    if-nez p1, :cond_5

    const-string v3, "\"\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1862
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1863
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1864
    :cond_5
    if-eqz p1, :cond_a

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_a

    .line 1865
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1866
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1867
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1871
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1873
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    const-string v4, "while scanning a double-quoted scalar"

    if-nez v3, :cond_8

    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1876
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1877
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1878
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1879
    .local v3, "hex":Ljava/lang/String;
    sget-object v5, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1885
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1886
    .local v4, "decimal":I
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 1887
    .local v5, "unicode":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1889
    .end local v3    # "hex":Ljava/lang/String;
    .end local v4    # "decimal":I
    .end local v5    # "unicode":Ljava/lang/String;
    goto :goto_2

    .line 1880
    .restart local v3    # "hex":Ljava/lang/String;
    :cond_7
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected escape sequence of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hexadecimal numbers, but found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1883
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v4, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 1889
    .end local v3    # "hex":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1890
    invoke-direct {p0, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    .end local v1    # "length":I
    .end local v2    # "c":I
    :goto_2
    goto/16 :goto_0

    .line 1892
    .restart local v1    # "length":I
    .restart local v2    # "c":I
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found unknown escape character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1895
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v4, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 1898
    .end local v3    # "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1909
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    const-string v3, " \t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1912
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1913
    .local v2, "whitespaces":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    .line 1914
    .local v3, "c":I
    if-eqz v3, :cond_4

    .line 1920
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v4

    .line 1921
    .local v4, "lineBreak":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1922
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v5

    .line 1923
    .local v5, "breaks":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1924
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1925
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1926
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    .end local v5    # "breaks":Ljava/lang/String;
    goto :goto_2

    .line 1930
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1916
    .end local v4    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1917
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a quoted scalar"

    const-string v7, "found unexpected end of stream"

    invoke-direct {v4, v6, p1, v7, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanLineBreak()Ljava/lang/String;
    .locals 4

    .line 2233
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 2234
    .local v0, "c":I
    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    const/16 v3, 0x85

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2241
    :cond_0
    const/16 v1, 0x2028

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2245
    :cond_1
    const-string v1, ""

    return-object v1

    .line 2242
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2243
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2235
    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2236
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_2

    .line 2238
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2240
    :goto_2
    const-string v1, "\n"

    return-object v1
.end method

.method private scanPlain()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 12

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1975
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1976
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v2, v1

    .line 1977
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1978
    .local v3, "indent":I
    const-string v5, ""

    .line 1981
    .local v5, "spaces":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 1983
    .local v6, "length":I
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_0

    .line 1984
    goto/16 :goto_4

    .line 1987
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v7

    .line 1988
    .local v7, "c":I
    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v9, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0x3a

    if-ne v7, v9, :cond_2

    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v11, v6, 0x1

    .line 1989
    invoke-virtual {v10, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v10

    iget v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v11, :cond_1

    const-string v11, ",[]{}"

    goto :goto_2

    :cond_1
    const-string v11, ""

    :goto_2
    invoke-virtual {v9, v10, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_2
    iget v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v9, :cond_3

    .line 1990
    const-string v9, ",?[]{}"

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 1991
    goto :goto_3

    .line 1993
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1995
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 1996
    goto :goto_4

    .line 1998
    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1999
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 2002
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlainSpaces()Ljava/lang/String;

    move-result-object v5

    .line 2004
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v9

    if-eq v9, v8, :cond_7

    iget v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2005
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v8

    if-ge v8, v3, :cond_6

    .line 2006
    goto :goto_4

    .line 2008
    .end local v6    # "length":I
    .end local v7    # "c":I
    :cond_6
    goto/16 :goto_0

    .line 2009
    :cond_7
    :goto_4
    new-instance v6, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2, v4}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    return-object v6
.end method

.method private scanPlainSpaces()Ljava/lang/String;
    .locals 13

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto/16 :goto_4

    .line 2021
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2022
    .local v1, "whitespaces":Ljava/lang/String;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    .line 2023
    .local v3, "lineBreak":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2024
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2025
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2026
    .local v4, "prefix":Ljava/lang/String;
    const-string v6, "---"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    if-nez v7, :cond_8

    const-string v7, "..."

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2027
    invoke-virtual {v10, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    .line 2030
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2032
    .local v9, "breaks":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v10

    if-ne v10, v2, :cond_2

    .line 2033
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 2035
    :cond_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v10

    .line 2036
    .local v10, "lb":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    .line 2037
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget-object v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v11, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2039
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v12, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2040
    invoke-virtual {v12, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 2046
    .end local v10    # "lb":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 2041
    .restart local v10    # "lb":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v8

    .line 2048
    .end local v10    # "lb":Ljava/lang/String;
    :cond_5
    const-string v2, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2050
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2051
    const-string v2, " "

    return-object v2

    .line 2053
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2028
    .end local v9    # "breaks":Ljava/lang/StringBuilder;
    :cond_8
    :goto_3
    return-object v8

    .line 2055
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_9
    return-object v1

    .line 2019
    .end local v1    # "whitespaces":Ljava/lang/String;
    .end local v3    # "lineBreak":Ljava/lang/String;
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private scanTag()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 11

    .line 1487
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1490
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    .line 1491
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1492
    .local v2, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1494
    .local v3, "suffix":Ljava/lang/String;
    const-string v4, ")"

    const-string v5, "\' ("

    const-string v6, "while scanning a tag"

    const-string v7, "tag"

    const/16 v8, 0x3c

    if-ne v1, v8, :cond_1

    .line 1497
    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1498
    invoke-direct {p0, v7, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1499
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1500
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_0

    .line 1508
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1503
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1504
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expected \'>\', but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1506
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v8, v6, v0, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8

    .line 1509
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    sget-object v8, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1512
    const-string v3, "!"

    .line 1513
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1519
    :cond_2
    const/4 v8, 0x1

    .line 1520
    .local v8, "length":I
    const/4 v9, 0x0

    .line 1521
    .local v9, "useHandle":Z
    :goto_0
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1522
    const/16 v10, 0x21

    if-ne v1, v10, :cond_3

    .line 1523
    const/4 v9, 0x1

    .line 1524
    goto :goto_1

    .line 1526
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1527
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    goto :goto_0

    .line 1531
    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    .line 1532
    invoke-direct {p0, v7, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1534
    :cond_5
    const-string v2, "!"

    .line 1535
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1537
    :goto_2
    invoke-direct {p0, v7, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1539
    .end local v8    # "length":I
    .end local v9    # "useHandle":Z
    :goto_3
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1542
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1547
    new-instance v4, Lorg/yaml/snakeyaml/tokens/TagTuple;

    invoke-direct {v4, v2, v3}, Lorg/yaml/snakeyaml/tokens/TagTuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    .local v4, "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1549
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v6, Lorg/yaml/snakeyaml/tokens/TagToken;

    invoke-direct {v6, v4, v0, v5}, Lorg/yaml/snakeyaml/tokens/TagToken;-><init>(Lorg/yaml/snakeyaml/tokens/TagTuple;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v6

    .line 1543
    .end local v4    # "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1544
    .restart local v7    # "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expected \' \', but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1545
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v8, v6, v0, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8
.end method

.method private scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1369
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1371
    .local v1, "c":I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1376
    return-object v0

    .line 1372
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \' \', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1374
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1386
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1388
    .local v1, "c":I
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1394
    return-object v0

    .line 1389
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1390
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \' \', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1392
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 4
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1346
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1347
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1349
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "handle":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1351
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1353
    :cond_1
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1355
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    return-object v2
.end method

.method private scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2081
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 2082
    .local v0, "c":I
    const-string v1, ")"

    const-string v2, "("

    const-string v3, "expected \'!\', but found "

    const-string v4, "while scanning a "

    const/16 v5, 0x21

    if-ne v0, v5, :cond_3

    .line 2090
    const/4 v6, 0x1

    .line 2091
    .local v6, "length":I
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v0

    .line 2092
    const/16 v7, 0x20

    if-eq v0, v7, :cond_2

    .line 2097
    :goto_0
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2098
    add-int/lit8 v6, v6, 0x1

    .line 2099
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v0

    goto :goto_0

    .line 2104
    :cond_0
    if-ne v0, v5, :cond_1

    .line 2110
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2105
    :cond_1
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2106
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 2107
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2108
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-direct {v7, v4, p2, v1, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 2112
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2113
    .local v1, "value":Ljava/lang/String;
    return-object v1

    .line 2083
    .end local v1    # "value":Ljava/lang/String;
    .end local v6    # "length":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 2084
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2085
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-direct {v6, v4, p2, v1, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6
.end method

.method private scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2138
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2139
    .local v1, "length":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    .line 2140
    .local v2, "c":I
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2141
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 2142
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    const/4 v1, 0x0

    .line 2144
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2148
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    goto :goto_0

    .line 2152
    :cond_1
    if-eqz v1, :cond_2

    .line 2153
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2157
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 2158
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while scanning a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2159
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v4, v5, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanToNextToken()V
    .locals 4

    .line 1177
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 1178
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1180
    :cond_0
    const/4 v0, 0x0

    .line 1181
    .local v0, "found":Z
    :goto_0
    if-nez v0, :cond_7

    .line 1182
    const/4 v1, 0x0

    .line 1185
    .local v1, "ff":I
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 1186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1188
    :cond_1
    if-lez v1, :cond_2

    .line 1189
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1195
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    .line 1196
    const/4 v1, 0x0

    .line 1197
    :goto_2
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1198
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1200
    :cond_3
    if-lez v1, :cond_4

    .line 1201
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1206
    :cond_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1207
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_6

    .line 1210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_3

    .line 1213
    :cond_5
    const/4 v0, 0x1

    .line 1215
    .end local v1    # "ff":I
    :cond_6
    :goto_3
    goto :goto_0

    .line 1216
    :cond_7
    return-void
.end method

.method private scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2178
    const/4 v0, 0x1

    .line 2179
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    mul-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    .line 2180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2186
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 2187
    .local v1, "beginningMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2188
    .local v3, "buff":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    const-string v5, "while scanning a "

    if-ne v4, v2, :cond_1

    .line 2189
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2191
    :try_start_0
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 2192
    .local v4, "code":B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    nop

    .line 2204
    .end local v4    # "code":B
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_1

    .line 2193
    :catch_0
    move-exception v2

    .line 2194
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    .line 2195
    .local v4, "c1":I
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 2196
    .local v6, "s1":Ljava/lang/String;
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v7

    .line 2197
    .local v7, "c2":I
    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 2198
    .local v8, "s2":Ljava/lang/String;
    new-instance v9, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expected URI escape sequence of 2 hexadecimal numbers, but found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") and "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 2202
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v11

    invoke-direct {v9, v5, p2, v10, v11}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v9

    .line 2206
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "c1":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "c2":I
    .end local v8    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2208
    :try_start_1
    invoke-static {v3}, Lorg/yaml/snakeyaml/util/UriEncoder;->decode(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 2209
    :catch_1
    move-exception v2

    .line 2210
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI in UTF-8: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2211
    invoke-virtual {v2}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p2, v6, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1318
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1319
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    const/4 v1, 0x0

    .line 1325
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1329
    .local v2, "value":Ljava/lang/Integer;
    return-object v2

    .line 1320
    .end local v1    # "length":I
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected a digit, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1322
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 10
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1283
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1284
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1286
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v0

    .line 1287
    .local v0, "major":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1288
    .local v1, "c":I
    const/16 v2, 0x2e

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "while scanning a directive"

    if-ne v1, v2, :cond_2

    .line 1294
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1295
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v2

    .line 1296
    .local v2, "minor":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1297
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1303
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1304
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    return-object v3

    .line 1298
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 1299
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected a digit or \' \', but found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1301
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v7, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 1289
    .end local v2    # "minor":Ljava/lang/Integer;
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "s":Ljava/lang/String;
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected a digit or \'.\', but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 1292
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v6, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6
.end method

.method private stalePossibleSimpleKeys()V
    .locals 7

    .line 450
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 451
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 452
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 454
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getLine()I

    move-result v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 455
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getIndex()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    .line 460
    :cond_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 468
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_1
    goto :goto_0

    .line 463
    .restart local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_2
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 464
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a simple key"

    const-string v6, "could not find expected \':\'"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 470
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_3
    return-void
.end method

.method private unwindIndent(I)V
    .locals 3
    .param p1, "col"    # I

    .line 542
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v0, :cond_0

    .line 543
    return-void

    .line 547
    :cond_0
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-le v0, p1, :cond_1

    .line 548
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 549
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 550
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEndToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_0

    .line 552
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z
    .locals 5
    .param p1, "choices"    # [Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 226
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 230
    array-length v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 231
    return v2

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v0

    .line 236
    .local v0, "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 237
    aget-object v4, p1, v3

    if-ne v0, v4, :cond_2

    .line 238
    return v2

    .line 236
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method public getToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 259
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 260
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method

.method public peekToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 249
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method
