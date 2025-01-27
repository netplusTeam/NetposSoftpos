.class public interface abstract Lorg/jline/reader/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/Parser$ParseContext;
    }
.end annotation


# static fields
.field public static final REGEX_COMMAND:Ljava/lang/String; = "[:]{0,1}[a-zA-Z]{1,}[a-zA-Z0-9_-]*"

.field public static final REGEX_VARIABLE:Ljava/lang/String; = "[a-zA-Z_]{1,}[a-zA-Z0-9_-]*"


# virtual methods
.method public getCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 37
    const-string v0, ""

    .line 38
    .local v0, "out":Ljava/lang/String;
    const-string v1, "^\\s*[a-zA-Z_]{1,}[a-zA-Z0-9_-]*=([:]{0,1}[a-zA-Z]{1,}[a-zA-Z0-9_-]*)(\\s+|$)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 39
    .local v1, "patternCommand":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 40
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 44
    const-string v3, "[:]{0,1}[a-zA-Z]{1,}[a-zA-Z0-9_-]*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    const-string v0, ""

    .line 48
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "out":Ljava/lang/String;
    const-string v1, "^\\s*([a-zA-Z_]{1,}[a-zA-Z0-9_-]*)\\s*=[^=~].*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 54
    .local v1, "patternCommand":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 55
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method public isEscapeChar(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 25
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;I)Lorg/jline/reader/ParsedLine;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "cursor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/SyntaxError;
        }
    .end annotation

    .line 21
    sget-object v0, Lorg/jline/reader/Parser$ParseContext;->UNSPECIFIED:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {p0, p1, p2, v0}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/SyntaxError;
        }
    .end annotation
.end method

.method public validCommandName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    if-eqz p1, :cond_0

    const-string v0, "[:]{0,1}[a-zA-Z]{1,}[a-zA-Z0-9_-]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validVariableName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    const-string v0, "[a-zA-Z_]{1,}[a-zA-Z0-9_-]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
