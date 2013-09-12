.class public Lcom/android/settings/usim/usimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "usimReceiver.java"


# static fields
.field private static isReadEF:Z

.field private static skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 77
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 79
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    .line 84
    :try_start_0
    const-string v2, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, skyUSimContactsClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeLanguage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "strLang"
    .parameter "context"

    .prologue
    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLanguage strLang = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 345
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Language is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Country is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 349
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 399
    .end local v3           #language:Ljava/lang/String;
    :goto_0
    return-void

    .line 357
    .restart local v3       #language:Ljava/lang/String;
    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v3           #language:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 397
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #language:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 379
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 380
    .local v1, config:Landroid/content/res/Configuration;
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 391
    :cond_3
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 392
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 393
    const-string v4, "com.android.providers.settings"

    invoke-static {v4}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_4
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkUsimLanguage(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/16 v12, 0x72

    const/16 v11, 0x6f

    const/16 v10, 0x6e

    const/16 v9, 0x65

    const/16 v8, 0x6b

    .line 164
    const-string v6, "uicc.lanuage.change"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    .local v3, lanchange:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage lanchange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 168
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 170
    const-string v6, "force update lanchange before read EF "

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 171
    const-string v6, "uicc.lanuage.change"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/usim/usimReceiver;->updateSimLang(Ljava/util/Locale;)V

    .line 333
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v6, "iskytelephony"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 178
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-nez v6, :cond_1

    .line 179
    const-string v6, "mPhone is null, So quit checkUsimLanguage()"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 186
    const-string v6, "USIM Mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 187
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x6f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 188
    .local v0, LangList:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 189
    if-eqz v0, :cond_6

    .line 190
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_6

    .line 192
    aget-byte v6, v0, v4

    if-ne v6, v8, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-eq v6, v12, :cond_3

    :cond_2
    aget-byte v6, v0, v4

    if-ne v6, v8, :cond_4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_4

    .line 195
    :cond_3
    const-string v6, " language change KO From LI"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 196
    const-string v6, "ko_KR"

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v0           #LangList:[B
    .end local v4           #nIndex:I
    :catch_0
    move-exception v5

    .line 331
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "checkUsimLanguage() ERROR"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v5           #re:Landroid/os/RemoteException;
    .restart local v0       #LangList:[B
    .restart local v4       #nIndex:I
    :cond_4
    :try_start_1
    aget-byte v6, v0, v4

    if-ne v6, v9, :cond_5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_5

    .line 201
    const-string v6, " language change EN From LI"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 202
    const-string v6, "en_US"

    
    goto/16 :goto_0

    .line 190
    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 218
    .end local v4           #nIndex:I
    :cond_6
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x2f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 219
    .local v1, PL_List:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 220
    if-eqz v1, :cond_15

    .line 222
    const/4 v4, 0x0

    .restart local v4       #nIndex:I
    :goto_2
    array-length v6, v1

    if-ge v4, v6, :cond_b

    .line 224
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_7

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-eq v6, v12, :cond_8

    :cond_7
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_9

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_9

    .line 227
    :cond_8
    const-string v6, " language change KO From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 228
    const-string v6, "ko_KR"

    
    goto/16 :goto_0

    .line 231
    :cond_9
    aget-byte v6, v1, v4

    if-ne v6, v9, :cond_a

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_a

    .line 233
    const-string v6, " language change EN From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 234
    const-string v6, "en_US"

    
    goto/16 :goto_0

    .line 222
    :cond_a
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 249
    :cond_b
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 252
    const-string v6, " language change EN as default"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 253
    const-string v6, "en_US"

    
    goto/16 :goto_0

    .line 259
    .end local v0           #LangList:[B
    .end local v1           #PL_List:[B
    .end local v4           #nIndex:I
    :cond_c
    const-string v6, "GSM Mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 260
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x2f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 261
    .restart local v1       #PL_List:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 262
    if-eqz v1, :cond_11

    .line 263
    const/4 v4, 0x0

    .restart local v4       #nIndex:I
    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_11

    .line 265
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_d

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-eq v6, v12, :cond_e

    :cond_d
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_f

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_f

    .line 268
    :cond_e
    const-string v6, " language change KO From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 269
    const-string v6, "ko_KR"

    
    goto/16 :goto_0

    .line 272
    :cond_f
    aget-byte v6, v1, v4

    if-ne v6, v9, :cond_10

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_10

    .line 274
    const-string v6, " language change EN From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 275
    const-string v6, "en_US"

    
    goto/16 :goto_0

    .line 263
    :cond_10
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 291
    .end local v4           #nIndex:I
    :cond_11
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x6f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 292
    .restart local v0       #LangList:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 293
    if-eqz v0, :cond_15

    .line 294
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v6, v0

    if-ge v2, v6, :cond_14

    .line 296
    aget-byte v6, v0, v2

    const/16 v7, 0x25

    if-ne v6, v7, :cond_12

    .line 297
    const-string v6, " language change KO From LangList"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 298
    const-string v6, "ko_KR"

    
    goto/16 :goto_0

    .line 301
    :cond_12
    aget-byte v6, v0, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 303
    const-string v6, " language change EN From LangList"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 304
    const-string v6, "en_US"

    

    goto/16 :goto_0

    .line 294
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 319
    :cond_14
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 322
    const-string v6, " language change EN as default"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 323
    const-string v6, "en_US"

    
    goto/16 :goto_0

    .line 329
    .end local v2           #i:I
    :cond_15
    const-string v6, " Exception Case"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateSimLang(Ljava/util/Locale;)V
    .locals 16
    .parameter "locale"

    .prologue
    .line 404
    const-string v13, "updateSimLang"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 405
    const-string v13, "iskytelephony"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 409
    const/4 v11, 0x0

    .line 410
    .local v11, lenLangStr:I
    const/4 v12, 0x0

    .line 413
    .local v12, lenWriteStr:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-nez v13, :cond_1

    .line 414
    const-string v13, "mPhone is null, So quit updateSimLang()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 421
    .local v1, LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 422
    if-eqz v1, :cond_3

    .line 424
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, LangStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 432
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 434
    const-string v7, "6b72"

    .line 435
    .local v7, WriteStr:Ljava/lang/String;
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 448
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() before WriteStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    .line 451
    if-le v12, v11, :cond_2

    .line 453
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 456
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() after WriteStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    .line 505
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v5

    .line 506
    .local v5, PL_List:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() PL_List:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 507
    if-eqz v5, :cond_0

    .line 509
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, PLStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    .line 517
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 519
    const-string v4, "6b72"

    .line 520
    .local v4, PLWriteStr:Ljava/lang/String;
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() before PLWriteStr :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    .line 536
    if-le v12, v11, :cond_4

    .line 538
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 541
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() after PLWriteStr :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_0

    .line 544
    .end local v1           #LangList:[B
    .end local v3           #PLStr:Ljava/lang/String;
    .end local v4           #PLWriteStr:Ljava/lang/String;
    .end local v5           #PL_List:[B
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 438
    .restart local v1       #LangList:[B
    .restart local v2       #LangStr:Ljava/lang/String;
    :cond_5
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 440
    const-string v7, "656e"

    .line 441
    .restart local v7       #WriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v7, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 462
    .end local v1           #LangList:[B
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 463
    .restart local v1       #LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 464
    if-eqz v1, :cond_3

    .line 467
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 469
    const/16 v6, 0x25

    .line 480
    .local v6, WriteCode:B
    :goto_4
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    array-length v13, v1

    if-ge v9, v13, :cond_b

    .line 483
    aget-byte v13, v1, v9

    if-ne v13, v6, :cond_8

    .line 485
    move v10, v9

    .line 487
    .local v10, j:I
    :cond_7
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    if-ge v10, v13, :cond_a

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v1, v13

    aput-byte v13, v1, v10

    .line 489
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 490
    array-length v13, v1

    if-lt v10, v13, :cond_7

    .line 480
    .end local v10           #j:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 471
    .end local v6           #WriteCode:B
    .end local v9           #i:I
    :cond_9
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 473
    const/4 v6, 0x1

    .restart local v6       #WriteCode:B
    goto :goto_4

    .line 488
    .restart local v9       #i:I
    .restart local v10       #j:I
    :cond_a
    const/4 v13, -0x1

    aput-byte v13, v1, v10

    goto :goto_6

    .line 493
    .end local v10           #j:I
    :cond_b
    array-length v13, v1

    new-array v8, v13, [B

    .line 495
    .local v8, Write_Array:[B
    const/4 v13, 0x0

    aput-byte v6, v8, v13

    .line 496
    const/4 v9, 0x1

    :goto_7
    array-length v13, v8

    if-ge v9, v13, :cond_c

    .line 498
    add-int/lit8 v13, v9, -0x1

    aget-byte v13, v1, v13

    aput-byte v13, v8, v9

    .line 496
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 500
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() Write_Array:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14, v8}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_2

    .line 523
    .end local v6           #WriteCode:B
    .end local v8           #Write_Array:[B
    .end local v9           #i:I
    .restart local v3       #PLStr:Ljava/lang/String;
    .restart local v5       #PL_List:[B
    :cond_d
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 525
    const-string v4, "656e"

    .line 526
    .restart local v4       #PLWriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_3
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 551
    const-string v0, "usimReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usimReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.settings.action.ISUSIMREADING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gcf_test_mode"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v2, v5

    .line 111
    .local v2, gcfmode:Z
    :cond_0
    sget-object v6, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sget-object v7, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->CHECKLOAD_URI:Landroid/net/Uri;

    invoke-interface {v6, p1, v7}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getUSIMInfo(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 112
    .local v1, checkLoad:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISUSIMREADING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 118
    if-nez v2, :cond_4

    if-eq v1, v5, :cond_1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 126
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, stateExtra:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 143
    const-string v6, "LOCKED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    sput-boolean v5, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadEF in LOCKED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 158
    .end local v3           #stateExtra:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 131
    .restart local v1       #checkLoad:I
    .restart local v2       #gcfmode:Z
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.USIMREADINGDONE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v4       #usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    .restart local v3       #stateExtra:Ljava/lang/String;
    :cond_5
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadEF in READY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 152
    sget-boolean v5, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    if-nez v5, :cond_3

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    goto :goto_1
.end method
