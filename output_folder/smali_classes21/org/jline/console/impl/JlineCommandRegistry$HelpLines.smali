.class Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;
.super Ljava/lang/Object;
.source "JlineCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/JlineCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelpLines"
.end annotation


# instance fields
.field private final body:Z

.field private final helpMessage:Ljava/lang/String;

.field private subcommands:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "helpMessage"    # Ljava/lang/String;
    .param p2, "body"    # Z

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->helpMessage:Ljava/lang/String;

    .line 119
    iput-boolean p2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->body:Z

    .line 120
    return-void
.end method


# virtual methods
.method public lines()[Ljava/lang/String;
    .locals 5

    .line 123
    const-string v0, ""

    .line 124
    .local v0, "out":Ljava/lang/String;
    const-string v1, "(^|\\n)(Usage|Summary)(:)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->helpMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 125
    .local v1, "tm":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->subcommands:Z

    .line 127
    iget-boolean v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->body:Z

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->helpMessage:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->helpMessage:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    iget-boolean v2, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->body:Z

    if-nez v2, :cond_2

    .line 133
    iget-object v0, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->helpMessage:Ljava/lang/String;

    .line 135
    :cond_2
    :goto_0
    const-string v2, "\\r?\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public subcommands()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/jline/console/impl/JlineCommandRegistry$HelpLines;->subcommands:Z

    return v0
.end method
