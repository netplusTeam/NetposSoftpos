.class final Lcom/sleepycat/je/log/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileNum(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 751
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "fname":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .param p1, "o1"    # Ljava/io/File;
    .param p2, "o2"    # Ljava/io/File;

    .line 756
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileManager$1;->getFileNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "fnum1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/sleepycat/je/log/FileManager$1;->getFileNum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "fnum2":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 748
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/FileManager$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
