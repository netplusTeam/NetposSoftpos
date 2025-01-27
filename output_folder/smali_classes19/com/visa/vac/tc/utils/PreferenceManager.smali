.class public Lcom/visa/vac/tc/utils/PreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:I

.field private static getTerminalData:Lcom/visa/vac/tc/utils/PreferenceManager;


# instance fields
.field private ContactlessConfiguration:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static INSTANCE()Lcom/visa/vac/tc/utils/PreferenceManager;
    .locals 2

    .line 22
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 19
    :cond_0
    sget-object v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getTerminalData:Lcom/visa/vac/tc/utils/PreferenceManager;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lcom/visa/vac/tc/utils/PreferenceManager;

    invoke-direct {v0}, Lcom/visa/vac/tc/utils/PreferenceManager;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getTerminalData:Lcom/visa/vac/tc/utils/PreferenceManager;

    .line 22
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    sget-object v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getTerminalData:Lcom/visa/vac/tc/utils/PreferenceManager;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 43
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 51
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 27
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    const-string v1, "com.visa.vac.tc.sharedPref"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    sget p1, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 39
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget p1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x39

    goto :goto_0

    :cond_1
    const/16 p1, 0x4d

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    .line 47
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget v0, Lcom/visa/vac/tc/utils/PreferenceManager;->getInstance:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/PreferenceManager;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/utils/PreferenceManager;->ContactlessConfiguration:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
