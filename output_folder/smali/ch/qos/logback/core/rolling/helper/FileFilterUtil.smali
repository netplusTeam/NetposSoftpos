.class public Lch/qos/logback/core/rolling/helper/FileFilterUtil;
.super Ljava/lang/Object;
.source "FileFilterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sregex"    # Ljava/lang/String;

    .line 46
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 47
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    return-object p0

    .line 50
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractCounter(Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stemRegex"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 101
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "lastFileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 104
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "counterAsStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 105
    .end local v3    # "counterAsStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The regex ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] should match ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static filesInFolderMatchingStemRegex(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stemRegex"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 77
    new-array v0, v0, [Ljava/io/File;

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lch/qos/logback/core/rolling/helper/FileFilterUtil$3;

    invoke-direct {v0, p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 80
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public static findHighestCounter([Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .param p0, "matchingFileArray"    # [Ljava/io/File;
    .param p1, "stemRegex"    # Ljava/lang/String;

    .line 90
    const/high16 v0, -0x80000000

    .line 91
    .local v0, "max":I
    move-object v1, p0

    .local v1, "arr$":[Ljava/io/File;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 92
    .local v4, "aFile":Ljava/io/File;
    invoke-static {v4, p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->extractCounter(Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "aCounter":I
    if-ge v0, v5, :cond_0

    .line 94
    move v0, v5

    .line 91
    .end local v4    # "aFile":Ljava/io/File;
    .end local v5    # "aCounter":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return v0
.end method

.method public static isEmptyDirectory(Ljava/io/File;)Z
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "filesInDir":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 56
    .end local v0    # "filesInDir":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] must be a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeEmptyParentDirectories(Ljava/io/File;I)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "recursivityCount"    # I

    .line 117
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->isEmptyDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->removeEmptyParentDirectories(Ljava/io/File;I)V

    .line 125
    :cond_1
    return-void
.end method

.method public static reverseSortFileArrayByName([Ljava/io/File;)V
    .locals 1
    .param p0, "fileArray"    # [Ljava/io/File;

    .line 36
    new-instance v0, Lch/qos/logback/core/rolling/helper/FileFilterUtil$2;

    invoke-direct {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 43
    return-void
.end method

.method public static slashify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .line 112
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sortFileArrayByName([Ljava/io/File;)V
    .locals 1
    .param p0, "fileArray"    # [Ljava/io/File;

    .line 26
    new-instance v0, Lch/qos/logback/core/rolling/helper/FileFilterUtil$1;

    invoke-direct {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 33
    return-void
.end method
