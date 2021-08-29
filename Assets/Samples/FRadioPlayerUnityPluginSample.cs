using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Plugins;
using System.Runtime.InteropServices;


/*
iOS 플러그인 사용 샘플
*/
namespace Plugins.SDK
{
    public class FRadioPlayerUnityPluginSample : MonoBehaviour
    {

        [DllImport("__Internal")]
        internal static extern void __IOS_SetRadioURL(string str);
        [DllImport("__Internal")]
        internal static extern void __IOS_Play();
        [DllImport("__Internal")]
        internal static extern void __IOS_Stop();

        void Start()
        {
            __IOS_SetRadioURL("http://cassini.shoutca.st:9300/stream");
        }

        public void OnClickTestFunc1()
        {
            __IOS_Play();
        }

        public void OnClickTestFunc2()
        {
            __IOS_Stop();
        }
    }
}