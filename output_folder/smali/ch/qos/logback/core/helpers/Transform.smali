.class public Lch/qos/logback/core/helpers/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

.field private static final CDATA_END_LEN:I

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["

.field private static final UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lch/qos/logback/core/helpers/Transform;->CDATA_END_LEN:I

    .line 30
    const-string v0, "[\u0000-\u0008\u000b\u000c\u000e-\u001f<>&\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/helpers/Transform;->UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapingCDATA(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "str"    # Ljava/lang/String;

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    return-void

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 117
    .local v2, "start":I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 118
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, "]]>]]&gt;<![CDATA["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget v3, Lch/qos/logback/core/helpers/Transform;->CDATA_END_LEN:I

    add-int v2, v1, v3

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 123
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 125
    :cond_2
    return-void

    .line 129
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    return-void
.end method

.method public static escapeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 41
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lch/qos/logback/core/helpers/Transform;->UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static escapeTags(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 58
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    .line 80
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 83
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\ufffd"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 71
    :sswitch_0
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&gt;"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    goto :goto_1

    .line 68
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&lt;"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    goto :goto_1

    .line 77
    :sswitch_2
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#39;"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    goto :goto_1

    .line 65
    :sswitch_3
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&amp;"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    goto :goto_1

    .line 74
    :sswitch_4
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&quot;"

    invoke-virtual {p0, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    nop

    .line 56
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method
