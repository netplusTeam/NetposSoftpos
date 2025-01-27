.class public final Lcom/github/devnied/emvnfccard/utils/TrackUtils;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# static fields
.field public static final CARD_HOLDER_NAME_SEPARATOR:Ljava/lang/String; = "/"

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final TRACK1_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRACK2_EQUIVALENT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/github/devnied/emvnfccard/utils/TrackUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->LOGGER:Lorg/slf4j/Logger;

    .line 56
    const-string v0, "([0-9]{1,19})D([0-9]{4})([0-9]{3})?(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->TRACK2_EQUIVALENT_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    nop

    .line 62
    const-string v0, "%?([A-Z])([0-9]{1,19})(\\?[0-9])?\\^([^\\^]{2,26})\\^([0-9]{4}|\\^)([0-9]{3}|\\^)([^\\?]+)\\??"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->TRACK1_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static extractTrack1Data([B)Lcom/github/devnied/emvnfccard/model/EmvTrack1;
    .locals 9
    .param p0, "pRawTrack1"    # [B

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":Lcom/github/devnied/emvnfccard/model/EmvTrack1;
    if-eqz p0, :cond_1

    .line 109
    new-instance v1, Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    invoke-direct {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;-><init>()V

    .line 110
    .local v1, "track1":Lcom/github/devnied/emvnfccard/model/EmvTrack1;
    invoke-virtual {v1, p0}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setRaw([B)V

    .line 111
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->TRACK1_PATTERN:Ljava/util/regex/Pattern;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 113
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setFormatCode(Ljava/lang/String;)V

    .line 117
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setCardNumber(Ljava/lang/String;)V

    .line 119
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "name":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-ne v6, v4, :cond_0

    .line 121
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setHolderLastname(Ljava/lang/String;)V

    .line 122
    aget-object v3, v5, v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setHolderFirstname(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "yyMM"

    invoke-direct {v3, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 127
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v6, 0x5

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setExpireDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .line 133
    new-instance v4, Lcom/github/devnied/emvnfccard/model/Service;

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/github/devnied/emvnfccard/model/Service;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/devnied/emvnfccard/model/EmvTrack1;->setService(Lcom/github/devnied/emvnfccard/model/Service;)V

    .line 134
    move-object v0, v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v4

    .line 129
    .local v4, "e":Ljava/text/ParseException;
    sget-object v6, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unparsable expire card date : {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-object v0

    .line 137
    .end local v1    # "track1":Lcom/github/devnied/emvnfccard/model/EmvTrack1;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v5    # "name":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static extractTrack2EquivalentData([B)Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    .locals 9
    .param p0, "pRawTrack2"    # [B

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "ret":Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    if-eqz p0, :cond_0

    .line 74
    new-instance v1, Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    invoke-direct {v1}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;-><init>()V

    .line 75
    .local v1, "track2":Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    invoke-virtual {v1, p0}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setRaw([B)V

    .line 76
    invoke-static {p0}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "data":Ljava/lang/String;
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->TRACK2_EQUIVALENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 79
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setCardNumber(Ljava/lang/String;)V

    .line 83
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "yyMM"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setExpireDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 91
    new-instance v5, Lcom/github/devnied/emvnfccard/model/Service;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/github/devnied/emvnfccard/model/Service;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setService(Lcom/github/devnied/emvnfccard/model/Service;)V

    .line 92
    move-object v0, v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Ljava/text/ParseException;
    sget-object v6, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v5}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unparsable expire card date : {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-object v0

    .line 95
    .end local v1    # "track2":Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "e":Ljava/text/ParseException;
    :cond_0
    :goto_0
    return-object v0
.end method
